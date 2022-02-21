#!/bin/bash

customer_subnet_name='Acme Inc subnet 10.11.12.13/24'

echo ''
echo "Say we have this string: $customer_subnet_name"

customer_name=${customer_subnet_name%subnet*}  # Trim from 'subnet' to end
echo "Customer name: $customer_name"
subnet=${customer_subnet_name##* }             # Remove leading 'space*'
echo "Subnet:        $subnet"
ipa=${subnet%/*}                               # Remove trailing '/*'
cidr=${subnet#*/}                              # Remove up to '/*'
echo "IPA            $ipa"

fw_object_name=${customer_subnet_name// /_}    # Replace space with '_-
fw_object_name=${fw_object_name////-}          # Replace '/' with '-'
fw_object_name=${fw_object_name,,}             # Lower case

echo ''
echo 'When the code runs we get:'
echo ''
echo "Customer name: $customer_name"
echo "Subnet:        $subnet"
echo "IPA            $ipa"
echo "CIDR mask:     $cidr"
echo "FW Object:     $fw_object_name"