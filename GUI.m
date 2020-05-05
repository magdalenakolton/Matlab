function varargout = matlab(varargin)
% Last Modified by GUIDE v2.5 05-May-2020 19:44:01

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @matlab_OpeningFcn, ...
                   'gui_OutputFcn',  @matlab_OutputFcn, ...
                   'gui_LayoutFcn',  [] , ...
                   'gui_Callback',   []);
if nargin && ischar(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end
% End initialization code - DO NOT EDIT


% --- Executes just before matlab is made visible.
function matlab_OpeningFcn(hObject, eventdata, handles, varargin)

handles.output = hObject;
% Update handles structure
guidata(hObject, handles);

% --- Outputs from this function are returned to the command line.
function varargout = matlab_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in obliczButton.
function obliczButton_Callback(hObject, eventdata, handles)

Points = get(handles.suwak, 'Value');
C = str2num(get(handles.pojKond, 'String'));
Lp = str2num(get(handles.PoczInd, 'String'));
Lk = str2num(get(handles.KoncInd, 'String'));
L = Lp;
f = zeros(Points);
x = zeros(Points);

for k=1:1:Points
    L = L + ((Lk-Lp)/Points);
    f(k) = 1 / (2*pi*sqrt(L*C));
    x(k) = k;
end

handles.axes1 = plot(x, f);



function pojKond_Callback(hObject, eventdata, handles)
% hObject    handle to pojKond (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of pojKond as text
%        str2double(get(hObject,'String')) returns contents of pojKond as a double


% --- Executes during object creation, after setting all properties.
function pojKond_CreateFcn(hObject, eventdata, handles)
% hObject    handle to pojKond (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function PoczInd_Callback(hObject, eventdata, handles)
% hObject    handle to PoczInd (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of PoczInd as text
%        str2double(get(hObject,'String')) returns contents of PoczInd as a double


% --- Executes during object creation, after setting all properties.
function PoczInd_CreateFcn(hObject, eventdata, handles)
% hObject    handle to PoczInd (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function KoncInd_Callback(hObject, eventdata, handles)
% hObject    handle to KoncInd (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of KoncInd as text
%        str2double(get(hObject,'String')) returns contents of KoncInd as a double


% --- Executes during object creation, after setting all properties.
function KoncInd_CreateFcn(hObject, eventdata, handles)
% hObject    handle to KoncInd (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on slider movement.
function suwak_Callback(hObject, eventdata, handles)

% hObject    handle to suwak (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider


% --- Executes during object creation, after setting all properties.
function suwak_CreateFcn(hObject, eventdata, handles)
% hObject    handle to suwak (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end
