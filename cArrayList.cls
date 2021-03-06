VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
END
Attribute VB_Name = "cArrayList"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = False
Option Explicit

'--      ___           ___           ___           ___           ___                                             ___           ___
'--     /  /\         /  /\         /__/\         /  /\         /__/\                   ___        ___          /  /\         /  /\
'--    /  /::\       /  /::\        \  \:\       /  /::\        \  \:\                 /__/\      /  /\        /  /:/        /  /::\
'--   /  /:/\:\     /  /:/\:\        \  \:\     /  /:/\:\        \  \:\                \  \:\    /  /:/       /  /:/        /  /:/\:\
'--  /  /:/~/:/    /  /:/  \:\   _____\__\:\   /  /:/~/::\   _____\__\:\                \  \:\  /__/::\      /  /:/  ___   /  /:/  \:\
'-- /__/:/ /:/___ /__/:/ \__\:\ /__/::::::::\ /__/:/ /:/\:\ /__/::::::::\           ___  \__\:\ \__\/\:\__  /__/:/  /  /\ /__/:/ \__\:\
'-- \  \:\/:::::/ \  \:\ /  /:/ \  \:\~~\~~\/ \  \:\/:/__\/ \  \:\~~\~~\/          /__/\ |  |:|    \  \:\/\ \  \:\ /  /:/ \  \:\ /  /:/
'--  \  \::/~~~~   \  \:\  /:/   \  \:\  ~~~   \  \::/       \  \:\  ~~~           \  \:\|  |:|     \__\::/  \  \:\  /:/   \  \:\  /:/
'--   \  \:\        \  \:\/:/     \  \:\        \  \:\        \  \:\                \  \:\__|:|     /__/:/    \  \:\/:/     \  \:\/:/
'--    \  \:\        \  \::/       \  \:\        \  \:\        \  \:\                \__\::::/      \__\/      \  \::/       \  \::/
'--     \__\/         \__\/         \__\/         \__\/         \__\/                    ~~~~                   \__\/         \__\/

Private m_ArrayList As Object

Public Property Get ArrayList() As Object
Attribute ArrayList.VB_UserMemId = 0
    Set ArrayList = m_ArrayList
End Property

Public Property Set ArrayList(ByVal NewArrayList As Object)
Attribute ArrayList.VB_UserMemId = 0
    Set m_ArrayList = NewArrayList
End Property

Private Sub Class_Initialize()
    Set m_ArrayList = CreateObject("System.COllections.ArrayList")
End Sub
'Properties------------------------
Public Property Get Capacity() As Long
    Capacity = m_ArrayList.Capacity
End Property
Public Property Let Capacity(ByVal vNewValue As Long)
    m_ArrayList.Capacity = vNewValue
End Property
'-
Public Property Get COunt() As Long
    COunt = m_ArrayList.COunt
End Property
'-
Public Property Get IsFixedSize() As Boolean
    IsFixedSize = m_ArrayList.IsFixedSize
End Property
'-
Public Property Get IsReadOnly() As Boolean
    IsReadOnly = m_ArrayList.IsReadOnly
End Property
'-
Public Property Get IsSynchronized() As Boolean
    IsSynchronized = m_ArrayList.IsSynchronized
End Property
'-
Public Function item()
    Set item = m_ArrayList
End Function
'-
Public Property Get SyncRoot() As Object
    Set SyncRoot = ArrayList.SyncRoot
End Property
'--------------------------------------
Public Function Add(Value As Variant) As Long
    Add = ArrayList.Add(Value)
End Function
'--------------------------------------
Public Sub AddRange(c As Object)
    'Inserir System.Collections.Queue e derivados
    ArrayList.AddRange c
End Sub
'--
Public Function BinarySearch(c) As Long
    BinarySearch = ArrayList.BinarySearch_2(c)
End Function
'--
Public Sub Clear()
    ArrayList.Clear
End Sub
'--
Public Function Clone() As Object
    Set Clone = ArrayList.Clone()
End Function
'--
Public Function Contains(c) As Boolean
    Contains = ArrayList.Contains(c)
End Function
'--
Public Function Equals(TheArrayList As Object) As Boolean
    Equals = ArrayList.Equals(TheArrayList)
End Function
'--
Public Function GetHashCode() As Long
    GetHashCode = ArrayList.GetHashCode()
End Function
'--
Public Function GetRange(ByVal index As Long, ByVal COunt As Long) As Object
    Set GetRange = ArrayList.GetRange(index, COunt)
End Function
'--
Public Function GetType()
    Set GetType = ArrayList.GetType()
End Function
'--
Public Function IndexOf(item, Optional ByVal InitialPosition As Long = 0) As Long
   IndexOf = ArrayList.IndexOf(item, InitialPosition)
End Function
'--
Public Sub Insert(ByVal index As Long, Value)
    ArrayList.Insert index, Value
End Sub
'--
Public Sub InsertRange(ByVal index As Long, c As Object)
    ArrayList.InsertRange index, c
End Sub
'--
Public Function LastIndexOf(item, Optional ByVal InitialPosition As Long = 0) As Long
   LastIndexOf = ArrayList.LastIndexOf(item)
End Function
'--
Public Sub Remove(item)
    ArrayList.Remove item
End Sub
'--
Public Sub RemoveAt(ByVal index As Long)
    ArrayList.RemoveAt index
End Sub
'--
Public Sub RemoveRange(ByVal index As Long, ByVal COunt As Long)
    ArrayList.RemoveRange index, COunt
End Sub
'--
Public Sub Reverse()
    ArrayList.Reverse
End Sub
'--
Public Sub SetRange(ByVal index As Long, c As Object)
    'C is a object from System.Collections  like Queue Stack and etc
    ArrayList.SetRange index, c
End Sub
'--
Public Sub Sort()
    ArrayList.Sort
End Sub
'--
Public Function ToArray(Optional TwoDimension As Boolean = False) As Variant
    Dim arrResult
    Dim arrAux
    Dim i As Long
    
    arrAux = ArrayList.ToArray()
    If TwoDimension Then
        ReDim arrResult(ArrayList.COunt, 0)
        For i = LBound(arrAux, 1) To UBound(arrAux, 1)
            arrResult(i, 0) = arrAux(i)
        Next i
    Else
        arrResult = arrAux
    End If
    ToArray = arrResult
End Function
'--
Public Function ToString() As String
    ToString = ArrayList.ToString()
End Function
'--
Public Sub TrimToSize()
    ArrayList.TrimToSize
End Sub
U�e���?Pa#N�Ө�V�^��%̞!��G��^������
���r*��>Y ҹԇ�ƵG}�?��~�$LD%�ttk�7�a�ki5�6�c@<;�~�J�ۚ����W��"�,��y	���t�P��x�������{������k[��L��bc�#�;�;ҿ�]U�{��zz���'�_��7����U,E|+af8}����P��M9%��0T^n݀w"�-�^v�>˺1@����� ���0��0U#0�h��}z�mIk�/�4l״z0LU E0C0A	+�2_0402+&https://www.globalsign.com/repository/0	+0 0U%0
+	0UT<.���+�{e���՜�� 0U��0	*�H�� � 
�.�.�Q���qu�f�ϾA�=�h|��h]$���R�w����>v/