<?php

return [

    /*
    |--------------------------------------------------------------------------
    | Validation Language Lines
    |--------------------------------------------------------------------------
    |
    | The following language lines contain the default error messages used by
    | the validator class. Some of these rules have multiple versions such
    | as the size rules. Feel free to tweak each of these messages here.
    |
    */

    'accepted' => ':attribute უნდა იყოს მიღებული.',
    'accepted_if' => ':attribute უნდა იყოს მიღებული, როცა :other არის :value.',
    'active_url' => ':attribute არ არის სწორი URL.',
    'after' => ':attribute უნდა იყოს :date-ის შემდეგ.',
    'after_or_equal' => ':attribute უნდა იყოს :date-ის შემდეგ ან მისი ტოლი.',
    'alpha' => ':attribute უნდა შეიცავდეს მხოლოდ ასოებს.',
    'alpha_dash' => ':attribute უნდა შეიცავდეს მხოლოდ ასოებს, რიცხვებს, ტირეებს და ქვედა ტირეებს.',
    'alpha_num' => ':attribute უნდა შეიცავდეს მხოლოდ ასოებს და რიცხვებს.',
    'array' => ':attribute უნდა იყოს მასივი.',
    'before' => ':attribute უნდა იყოს :date-მდე.',
    'before_or_equal' => ':attribute უნდა იყოს :date-მდე ან მისი ტოლი.',
    'between' => [
        'numeric' => ':attribute უნდა იყოს :min და :max შორის.',
        'file' => ':attribute უნდა იყოს :min და :max კილობაიტს შორის.',
        'string' => ':attribute უნდა იყოს :min და :max სიმბოლოს შორის.',
        'array' => ':attribute უნდა შეიცავდეს :min-დან :max-მდე ელემენტს.',
    ],
    'boolean' => ':attribute-ის ველი უნდა იყოს true ან false.',
    'confirmed' => ':attribute დადასტურება არ ემთხვევა.',
    'current_password' => 'პაროლი არასწორია.',
    'date' => ':attribute არ არის სწორი თარიღი.',
    'date_equals' => ':attribute უნდა იყოს :date-ის ტოლი თარიღი.',
    'date_format' => ':attribute არ ემთხვევა ფორმატს :format.',
    'declined' => ':attribute უნდა იყოს უარყოფილი.',
    'declined_if' => ':attribute უნდა იყოს უარყოფილი, როცა :other არის :value.',
    'different' => ':attribute და :other უნდა იყოს განსხვავებული.',
    'digits' => ':attribute უნდა იყოს :digits ციფრი.',
    'digits_between' => ':attribute უნდა იყოს :min და :max ციფრს შორის.',
    'dimensions' => ':attribute-ს აქვს არასწორი გამოსახულების ზომები.',
    'distinct' => ':attribute-ის ველს აქვს დუბლირებული მნიშვნელობა.',
    'email' => ':attribute უნდა იყოს სწორი ელფოსტის მისამართი.',
    'ends_with' => ':attribute უნდა მთავრდებოდეს შემდეგით: :values.',
    'enum' => 'არჩეული :attribute არასწორია.',
    'exists' => 'არჩეული :attribute არასწორია.',
    'file' => ':attribute უნდა იყოს ფაილი.',
    'filled' => ':attribute-ის ველს უნდა ჰქონდეს მნიშვნელობა.',
    'gt' => [
        'numeric' => ':attribute უნდა იყოს :value-ზე მეტი.',
        'file' => ':attribute უნდა იყოს :value კილობაიტზე მეტი.',
        'string' => ':attribute უნდა იყოს :value სიმბოლოზე მეტი.',
        'array' => ':attribute უნდა შეიცავდეს :value-ზე მეტ ელემენტს.',
    ],
    'gte' => [
        'numeric' => ':attribute უნდა იყოს :value-ზე მეტი ან ტოლი.',
        'file' => ':attribute უნდა იყოს :value კილობაიტზე მეტი ან ტოლი.',
        'string' => ':attribute უნდა იყოს :value სიმბოლოზე მეტი ან ტოლი.',
        'array' => ':attribute უნდა შეიცავდეს :value ან მეტ ელემენტს.',
    ],
    'image' => ':attribute უნდა იყოს გამოსახულება.',
    'in' => 'არჩეული :attribute არასწორია.',
    'in_array' => ':attribute-ის ველი არ არსებობს :other-ში.',
    'integer' => ':attribute უნდა იყოს მთელი რიცხვი.',
    'ip' => ':attribute უნდა იყოს სწორი IP მისამართი.',
    'ipv4' => ':attribute უნდა იყოს სწორი IPv4 მისამართი.',
    'ipv6' => ':attribute უნდა იყოს სწორი IPv6 მისამართი.',
    'json' => ':attribute უნდა იყოს სწორი JSON სტრიქონი.',
    'lt' => [
        'numeric' => ':attribute უნდა იყოს :value-ზე ნაკლები.',
        'file' => ':attribute უნდა იყოს :value კილობაიტზე ნაკლები.',
        'string' => ':attribute უნდა იყოს :value სიმბოლოზე ნაკლები.',
        'array' => ':attribute უნდა შეიცავდეს :value-ზე ნაკლებ ელემენტს.',
    ],
    'lte' => [
        'numeric' => ':attribute უნდა იყოს :value-ზე ნაკლები ან ტოლი.',
        'file' => ':attribute უნდა იყოს :value კილობაიტზე ნაკლები ან ტოლი.',
        'string' => ':attribute უნდა იყოს :value სიმბოლოზე ნაკლები ან ტოლი.',
        'array' => ':attribute არ უნდა შეიცავდეს :value-ზე მეტ ელემენტს.',
    ],
    'mac_address' => ':attribute უნდა იყოს სწორი MAC მისამართი.',
    'max' => [
        'numeric' => ':attribute არ უნდა იყოს :max-ზე მეტი.',
        'file' => ':attribute არ უნდა იყოს :max კილობაიტზე მეტი.',
        'string' => ':attribute არ უნდა იყოს :max სიმბოლოზე მეტი.',
        'array' => ':attribute არ უნდა შეიცავდეს :max-ზე მეტ ელემენტს.',
    ],
    'mimes' => ':attribute უნდა იყოს ფაილის ტიპი: :values.',
    'mimetypes' => ':attribute უნდა იყოს ფაილის ტიპი: :values.',
    'min' => [
        'numeric' => ':attribute უნდა იყოს მინიმუმ :min.',
        'file' => ':attribute უნდა იყოს მინიმუმ :min კილობაიტი.',
        'string' => ':attribute უნდა იყოს მინიმუმ :min სიმბოლო.',
        'array' => ':attribute უნდა შეიცავდეს მინიმუმ :min ელემენტს.',
    ],
    'multiple_of' => ':attribute უნდა იყოს :value-ის ჯერადი.',
    'not_in' => 'არჩეული :attribute არასწორია.',
    'not_regex' => ':attribute-ის ფორმატი არასწორია.',
    'numeric' => ':attribute უნდა იყოს რიცხვი.',
    'password' => 'პაროლი არასწორია.',
    'present' => ':attribute-ის ველი უნდა არსებობდეს.',
    'prohibited' => ':attribute-ის ველი აკრძალულია.',
    'prohibited_if' => ':attribute-ის ველი აკრძალულია, როცა :other არის :value.',
    'prohibited_unless' => ':attribute-ის ველი აკრძალულია თუ :other არ არის :values-ში.',
    'prohibits' => ':attribute-ის ველი კრძალავს :other-ის არსებობას.',
    'regex' => ':attribute-ის ფორმატი არასწორია.',
    'required' => ':attribute-ის ველი აუცილებელია.',
    'required_array_keys' => ':attribute-ის ველმა უნდა შეიცავდეს შემდეგ გასაღებებს: :values.',
    'required_if' => ':attribute-ის ველი აუცილებელია, როცა :other არის :value.',
    'required_unless' => ':attribute-ის ველი აუცილებელია, თუ :other არ არის :values-ში.',
    'required_with' => ':attribute-ის ველი აუცილებელია, როცა :values არსებობს.',
    'required_with_all' => ':attribute-ის ველი აუცილებელია, როცა :values არსებობს.',
    'required_without' => ':attribute-ის ველი აუცილებელია, როცა :values არ არსებობს.',
    'required_without_all' => ':attribute-ის ველი აუცილებელია, როცა :values-დან არცერთი არ არსებობს.',
    'same' => ':attribute და :other უნდა ემთხვეოდეს.',
    'size' => [
        'numeric' => ':attribute უნდა იყოს :size.',
        'file' => ':attribute უნდა იყოს :size კილობაიტი.',
        'string' => ':attribute უნდა იყოს :size სიმბოლო.',
        'array' => ':attribute უნდა შეიცავდეს :size ელემენტს.',
    ],
    'starts_with' => ':attribute უნდა იწყებოდეს შემდეგით: :values.',
    'string' => ':attribute უნდა იყოს სტრიქონი.',
    'timezone' => ':attribute უნდა იყოს სწორი დროის ზონა.',
    'unique' => ':attribute უკვე დაკავებულია.',
    'uploaded' => ':attribute-ის ატვირთვა ვერ მოხერხდა.',
    'url' => ':attribute-ის ფორმატი არასწორია.',
    'uuid' => ':attribute უნდა იყოს სწორი UUID.',

    /*
    |--------------------------------------------------------------------------
    | Custom Validation Language Lines
    |--------------------------------------------------------------------------
    |
    | Here you may specify custom validation messages for attributes using the
    | convention "attribute.rule" to name the lines. This makes it quick to
    | specify a specific custom language line for a given attribute rule.
    |
    */

    'custom' => [
        'attribute-name' => [
            'rule-name' => 'custom-message',
        ],
    ],

    /*
    |--------------------------------------------------------------------------
    | Custom Validation Attributes
    |--------------------------------------------------------------------------
    |
    | The following language lines are used to swap our attribute placeholder
    | with something more reader friendly such as "E-Mail Address" instead
    | of "email". This simply helps us make our message more expressive.
    |
    */

    'attributes' => [],

]; 