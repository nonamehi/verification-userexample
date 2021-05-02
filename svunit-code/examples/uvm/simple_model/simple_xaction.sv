//###############################################################
//
//  Licensed to the Apache Software Foundation (ASF) under one
//  or more contributor license agreements.  See the NOTICE file
//  distributed with this work for additional information
//  regarding copyright ownership.  The ASF licenses this file
//  to you under the Apache License, Version 2.0 (the
//  "License"); you may not use this file except in compliance
//  with the License.  You may obtain a copy of the License at
//
//  http://www.apache.org/licenses/LICENSE-2.0
//
//  Unless required by applicable law or agreed to in writing,
//  software distributed under the License is distributed on an
//  "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
//  KIND, either express or implied.  See the License for the
//  specific language governing permissions and limitations
//  under the License.
//
//###############################################################

`ifndef __SIMPLE_XACTION_SV__
`define __SIMPLE_XACTION_SV__

`include "uvm_macros.svh"

import uvm_pkg::*;

class simple_xaction extends uvm_sequence_item;
  rand int field;

  `uvm_object_utils_begin(simple_xaction)
    `uvm_field_int(field, UVM_ALL_ON)
  `uvm_object_utils_end

  function new(string name = "simple_xaction");
     super.new(name);
  endfunction
endclass

`endif
