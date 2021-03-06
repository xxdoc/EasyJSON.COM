VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
END
Attribute VB_Name = "JSONNumber"
Attribute VB_GlobalNameSpace = True
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = True
Option Explicit
Implements JSONItem

Private mData As Variant
Private mParent As JSONItem

Public Sub Class_Initialize()
    mData = 0#
End Sub

Public Property Get JSONItem_Count() As Integer
    JSONItem_Count = 0
End Property

Public Property Get JSONItem_Item(Key As String) As JSONItem
    Err.Raise 66001, , "JSON: Invalid Container"
End Property

Public Property Get JSONItem_Exists(Key As String) As Boolean
    Err.Raise 66001, , "JSON: Invalid Container"
End Property

Public Function JSONItem_Add(Value As JSONItem, Optional Key As String = "") As JSONItem
    Err.Raise 66001, , "JSON: Invalid Container"
End Function

Public Function JSONItem_AddArray(Optional Key As String = "") As JSONItem
    Err.Raise 66001, , "JSON: Invalid Container"
End Function

Public Function JSONItem_AddObject(Optional Key As String = "") As JSONItem
    Err.Raise 66001, , "JSON: Invalid Container"
End Function

Public Function JSONItem_AddNumber(Value As Double, Optional Key As String = "") As JSONItem
    Err.Raise 66001, , "JSON: Invalid Container"
End Function

Public Function JSONItem_AddString(Value As String, Optional Key As String = "") As JSONItem
    Err.Raise 66001, , "JSON: Invalid Container"
End Function

Public Function JSONItem_AddBoolean(Value As Boolean, Optional Key As String = "") As JSONItem
    Err.Raise 66001, , "JSON: Invalid Container"
End Function

Public Function JSONItem_AddNull(Optional Key As String = "") As JSONItem
    Err.Raise 66001, , "JSON: Invalid Container"
End Function

Public Sub JSONItem_Remove(Key As String)
    Err.Raise 66001, , "JSON: Invalid Container"
End Sub

Public Property Get JSONItem_JsType() As String
    JSONItem_JsType = "number"
End Property

Public Property Get JSONItem_IsJsArray() As Boolean
    JSONItem_IsJsArray = False
End Property

Public Property Get JSONItem_IsJsBool() As Boolean
    JSONItem_IsJsBool = False
End Property

Public Property Get JSONItem_IsJsNull() As Boolean
    JSONItem_IsJsNull = False
End Property

Public Property Get JSONItem_IsJsNumber() As Boolean
    JSONItem_IsJsNumber = True
End Property

Public Property Get JSONItem_IsJsObject() As Boolean
    JSONItem_IsJsObject = False
End Property

Public Property Get JSONItem_IsJsString() As Boolean
    JSONItem_IsJsString = False
End Property

Public Property Get JSONItem_ToString() As String
    JSONItem_ToString = CStr(mData)
End Property

Public Sub JSONItem_SetValue(Value As Variant)
    mData = CDbl(Value)
End Sub
Public Function JSONItem_GetValue() As Variant
    JSONItem_GetValue = CDbl(mData)
End Function

Public Property Get JSONItem_Parent() As JSONItem
    Set JSONItem_Parent = mParent
End Property

Public Property Set JSONItem_Parent(Value As JSONItem)
    Set mParent = Value
End Property



