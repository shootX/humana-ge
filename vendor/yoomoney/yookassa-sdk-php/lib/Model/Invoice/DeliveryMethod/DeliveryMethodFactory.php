<?php

/*
 * The MIT License
 *
 * Copyright (c) 2025 "YooMoney", NBСO LLC
 *
 * Permission is hereby granted, free of charge, to any person obtaining a copy
 * of this software and associated documentation files (the "Software"), to deal
 * in the Software without restriction, including without limitation the rights
 * to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
 * copies of the Software, and to permit persons to whom the Software is
 * furnished to do so, subject to the following conditions:
 *
 * The above copyright notice and this permission notice shall be included in
 * all copies or substantial portions of the Software.
 *
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 * AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 * LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
 * OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
 * THE SOFTWARE.
 */

namespace YooKassa\Model\Invoice\DeliveryMethod;

use InvalidArgumentException;

/**
 * Класс, представляющий модель PaymentMethodFactory.
 *
 * Фабрика создания объекта методов доставки счета из массива.
 *
 * @category Class
 * @package  YooKassa\Model
 * @author   cms@yoomoney.ru
 * @link     https://yookassa.ru/developers/api
 */
class DeliveryMethodFactory
{
    private array $typeClassMap = [
        DeliveryMethodType::SELF => 'DeliveryMethodSelf',
        DeliveryMethodType::UNKNOWN => 'DeliveryMethodUnknown',
    ];

    /**
     * Фабричный метод создания объекта метода доставки счета по типу.
     *
     * @param string|null $type Тип метода доставки счета
     *
     * @return AbstractDeliveryMethod
     */
    public function factory(?string $type): AbstractDeliveryMethod
    {
        if (!array_key_exists($type, $this->typeClassMap)) {
            $type = DeliveryMethodType::UNKNOWN;
        }
        $className = __NAMESPACE__ . '\\' . $this->typeClassMap[$type];

        return new $className();
    }

    /**
     * Фабричный метод создания объекта метода доставки счета из массива.
     *
     * @param array $data Массив данных метода доставки счета
     * @param null|string $type Тип метода доставки счета
     */
    public function factoryFromArray(array $data, ?string $type = null): AbstractDeliveryMethod
    {
        if (null === $type) {
            if (array_key_exists('type', $data)) {
                $type = $data['type'];
                unset($data['type']);
            } else {
                throw new InvalidArgumentException(
                    'Parameter type not specified in DeliveryMethodFactory.factoryFromArray()'
                );
            }
        }

        $paymentData = $this->factory($type);
        $paymentData->fromArray($data);

        return $paymentData;
    }
}
