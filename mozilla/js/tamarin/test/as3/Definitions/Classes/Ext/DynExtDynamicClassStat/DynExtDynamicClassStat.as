/* ***** BEGIN LICENSE BLOCK *****
 * Version: MPL 1.1/GPL 2.0/LGPL 2.1
 *
 * The contents of this file are subject to the Mozilla Public License Version
 * 1.1 (the "License"); you may not use this file except in compliance with
 * the License. You may obtain a copy of the License at
 * http://www.mozilla.org/MPL/
 *
 * Software distributed under the License is distributed on an "AS IS" basis,
 * WITHOUT WARRANTY OF ANY KIND, either express or implied. See the License
 * for the specific language governing rights and limitations under the
 * License.
 *
 * The Original Code is [Open Source Virtual Machine.].
 *
 * The Initial Developer of the Original Code is
 * Adobe System Incorporated.
 * Portions created by the Initial Developer are Copyright (C) 2004-2006
 * the Initial Developer. All Rights Reserved.
 *
 * Contributor(s):
 *   Adobe AS3 Team
 *
 * Alternatively, the contents of this file may be used under the terms of
 * either the GNU General Public License Version 2 or later (the "GPL"), or
 * the GNU Lesser General Public License Version 2.1 or later (the "LGPL"),
 * in which case the provisions of the GPL or the LGPL are applicable instead
 * of those above. If you wish to allow use of your version of this file only
 * under the terms of either the GPL or the LGPL, and not to allow others to
 * use your version of this file under the terms of the MPL, indicate your
 * decision by deleting the provisions above and replace them with the notice
 * and other provisions required by the GPL or the LGPL. If you do not delete
 * the provisions above, a recipient may use your version of this file under
 * the terms of any one of the MPL, the GPL or the LGPL.
 *
 * ***** END LICENSE BLOCK ***** */


package DynamicClass {

  import DynamicClass.*;

  dynamic class DynExtDynamicClassStatInner extends DynamicClass {

    // ************************************
    // access static method of parent
    // from default method of sub class
    // ************************************

    function subGetArray() : Array { return getStatArray(); }
    function subSetArray(a:Array) { setStatArray(a); }

    // function to test above from test scripts
    public function testSubArray(a:Array) : Array {
        this.subSetArray(a);
        return this.subGetArray();
    }

    // ************************************
    // access static method of parent
    // from public method of sub class
    // ************************************

    public function pubSubGetArray() : Array { return getStatArray(); }
    public function pubSubSetArray(a:Array) { setStatArray(a); }

    // ************************************
    // access static method of parent
    // from private method of sub class
    // ************************************

    private function privSubGetArray() : Array { return getStatArray(); }
    private function privSubSetArray(a:Array) { setStatArray(a); }

    // function to test above from test scripts
    public function testPrivSubArray(a:Array) : Array {
        this.privSubSetArray(a);
        return this.privSubGetArray();
    }

    // ************************************
    // access static method of parent
    // from final method of sub class
    // ************************************

    final function finSubGetArray() : Array { return getStatArray(); }
    final function finSubSetArray(a:Array) { setStatArray(a); }

    // function to test above from test scripts
    public function testFinSubArray(a:Array) : Array {
        this.finSubSetArray(a);
        return this.finSubGetArray();
    }
    
    // ************************************
    // access static method of parent
    // from private final method of sub class
    // ************************************

    private final function privFinSubGetArray() : Array { return getStatArray(); }
    private final function privFinSubSetArray(a:Array) { setStatArray(a); }

    // function to test above from test scripts
    public function testPrivFinSubArray(a:Array) : Array {
        this.privFinSubSetArray(a);
        return this.privFinSubGetArray();
    }
    
    // ************************************
    // access static method of parent
    // from virtual method of sub class
    // ************************************

    virtual function virSubGetArray() : Array { return getStatArray(); }
    virtual function virSubSetArray(a:Array) { setStatArray(a); }

    // function to test above from test scripts
    public function testVirSubArray(a:Array) : Array {
        this.virSubSetArray(a);
        return this.virSubGetArray();
    }
    
    
    // ***************************************
    // access static method of parent
    // from static method of sub class
    // ***************************************

    static function statSubGetArray() : Array { return getStatArray(); }
    static function statSubSetArray(a:Array) { setStatArray(a); }
    // function to test above from test scripts
    public function testStatSubArray(a:Array) : Array {
        this.statSubSetArray(a);
        return this.statSubGetArray();
    }

    // ***************************************
    // access static method of parent
    // from public static method of sub class
    // ***************************************

    public static function pubStatSubGetArray() : Array { return getStatArray(); }
    public static function pubStatSubSetArray(a:Array) { setStatArray(a); }
    // function to test above from test scripts
    public function testPubStatSubArray(a:Array) : Array {
        this.pubStatSubSetArray(a);
        return this.pubStatSubGetArray();
    }

    // ***************************************
    // access static method of parent
    // from private static method of sub class
    // ***************************************

    private static function privStatSubGetArray() : Array { return getStatArray(); }
    private static function privStatSubSetArray(a:Array) { setStatArray(a); }

    // public accessor to test asrt
    public function testPrivStatSubArray(a:Array) : Array {
        this.privStatSubSetArray(a);
        return privStatSubGetArray();
    }

    // ***************************************
    // access static property from 
    // default method of sub class
    // ***************************************

    function subGetDPArray() : Array { return statArray; }
    function subSetDPArray(a:Array) { statArray = a; }
    // public accessor to test asrt
    public function testSubDPArray(a:Array) : Array {
        this.subSetDPArray(a);
        return subGetDPArray();
    }


    // ***************************************
    // access static property from
    // public method of sub class
    // ***************************************

    public function pubSubGetDPArray() : Array { return statArray; }
    public function pubSubSetDPArray(a:Array) { statArray = a; }

    // ***************************************
    // access static property from
    // private method of sub class
    // ***************************************

    private function privSubGetDPArray() : Array { return statArray; }
    private function privSubSetDPArray(a:Array) { statArray = a; }
    // public accessor to test asrt
    public function testPrivSubDPArray(a:Array) : Array {
        this.privSubSetDPArray(a);
        return privSubGetDPArray();
    }

    // ***************************************
    // access static property from
    // static method of sub class
    // ***************************************

    static function statSubGetSPArray() : Array { return statArray; }
    static function statSubSetSPArray(a:Array) { statArray = a; }
    // public accessor to test asrt
    public function testStatSubDPArray(a:Array) : Array {
        this.statSubSetSPArray(a);
        return statSubGetSPArray();
    }

    // ***************************************
    // access static property from
    // public static method of sub class
    // ***************************************

    public static function pubStatSubGetSPArray() : Array { return statArray; }
    public static function pubStatSubSetSPArray(a:Array) { statArray = a; }

    // ***************************************
    // access static property from
    // private static method of sub class
    // ***************************************
   
    private static function privStatSubGetSPArray() : Array { return statArray; }
    private static function privStatSubSetSPArray(a:Array) { statArray = a; }

    // public accessor for asrt
    public function testPrivStatSubPArray(a:Array) : Array {
        privStatSubSetSPArray( a );
        return privStatSubGetSPArray();
    }

    // ***************************************
    // access static property from 
    // final method of sub class
    // ***************************************

    final function finSubGetDPArray() : Array { return statArray; }
    final function finSubSetDPArray(a:Array) { statArray = a; }

    // public accessor for asrt
    public function testFinSubDPArray(a:Array) : Array {
        this.finSubSetDPArray( a );
        return finSubGetDPArray();
    }
    
    // ***************************************
    // access static property from 
    // virtual public method of sub class
    // ***************************************

    public virtual function pubVirSubGetDPArray() : Array { return statArray; }
    public virtual function pubVirSubSetDPArray(a:Array) { statArray = a; }

    // public accessor for asrt
    public function testPubVirSubDPArray(a:Array) : Array {
        this.pubVirSubSetDPArray( a );
        return pubVirSubGetDPArray();
    }    
    
  }
  public class DynExtDynamicClassStat extends DynExtDynamicClassStatInner {}
}