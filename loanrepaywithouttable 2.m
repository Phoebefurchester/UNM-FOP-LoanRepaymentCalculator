function varargout = loanrepaywithouttable(varargin)
% LOANREPAYWITHOUTTABLE MATLAB code for loanrepaywithouttable.fig
%      LOANREPAYWITHOUTTABLE, by itself, creates a new LOANREPAYWITHOUTTABLE or raises the existing
%      singleton*.
%
%      H = LOANREPAYWITHOUTTABLE returns the handle to a new LOANREPAYWITHOUTTABLE or the handle to
%      the existing singleton*.
%
%      LOANREPAYWITHOUTTABLE('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in LOANREPAYWITHOUTTABLE.M with the given input arguments.
%
%      LOANREPAYWITHOUTTABLE('Property','Value',...) creates a new LOANREPAYWITHOUTTABLE or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before loanrepaywithouttable_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to loanrepaywithouttable_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help loanrepaywithouttable

% Last Modified by GUIDE v2.5 04-Apr-2021 18:09:15

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @loanrepaywithouttable_OpeningFcn, ...
                   'gui_OutputFcn',  @loanrepaywithouttable_OutputFcn, ...
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


% --- Executes just before loanrepaywithouttable is made visible.
function loanrepaywithouttable_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to loanrepaywithouttable (see VARARGIN)

% Choose default command line output for loanrepaywithouttable
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes loanrepaywithouttable wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = loanrepaywithouttable_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function loan_amount_Callback(hObject, eventdata, handles)
% hObject    handle to loan_amount (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of loan_amount as text
%        str2double(get(hObject,'String')) returns contents of loan_amount as a double
loan=get(hObject,'string');
loan=str2double(loan);
handles.loan=loan;
guidata(hObject,handles);

% --- Executes during object creation, after setting all properties.
function loan_amount_CreateFcn(hObject, eventdata, handles)
% hObject    handle to loan_amount (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function yearly_interest_rate_Callback(hObject, eventdata, handles)
% hObject    handle to yearly_interest_rate (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of yearly_interest_rate as text
%        str2double(get(hObject,'String')) returns contents of yearly_interest_rate as a double
yearly_interest=get(hObject,'string');
yearly_interest=str2double(yearly_interest);
handles.yearly_interest=yearly_interest;
guidata(hObject,handles);

% --- Executes during object creation, after setting all properties.
function yearly_interest_rate_CreateFcn(hObject, eventdata, handles)
% hObject    handle to yearly_interest_rate (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function monthly_payment_Callback(hObject, eventdata, handles)
% hObject    handle to monthly_payment (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of monthly_payment as text
%        str2double(get(hObject,'String')) returns contents of monthly_payment as a double
monthly_payment=get(hObject,'string');
monthly_payment=str2double(monthly_payment);
handles.monthly_payment=monthly_payment;
guidata(hObject,handles);

% --- Executes during object creation, after setting all properties.
function monthly_payment_CreateFcn(hObject, eventdata, handles)
% hObject    handle to monthly_payment (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in calculate.
function calculate_Callback(hObject, eventdata, handles)
% hObject    handle to calculate (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

%ROW 1
%if and else statements from line 163 to 172 it only applys for monthly payment ONLY! 

if handles.monthly_payment<=0;
    warndlg('You have entered an invalid number!','ERROR!');
    set(handles.outputtable,'Data','INVALID');
elseif handles.monthly_payment==0;
    errordlg('You have entred an invalid amount','ERROR');
    set(handles.outputtable,'Data','INVALID');
elseif handles.monthly_payment>handles.loan;
    warndlg('The Monthly Payment Entered Is More Than Loan Amount','WARNING!');
    set(handles.outputtable,'Data','INVALID');
end

%line 175 to 198 apply to yearly interest and loan amount ONLY!

%This has to be done to FULLFIL THE MARKING RUBRIC 
    breaker=0;
    while handles.yearly_interest<1.5||handles.loan<5000;
        answer=questdlg('Yearly Interest Can Not Be Less Than 1.5 and Minimum Loan Amount Is 5000. Do you want to re-enter?','ERROR!','Yes','No','Yes');
        if strcmp(answer,'No');
            close
            breaker=1;
            break
        else 
            prompt={'loan amount','monthly payment','yearly interest'};
            name='Re-enter';
            numlines=1;
            defaultanswer={'5000','1','1.5'};
            options.Resize='on';
            answer_reenter=inputdlg(prompt,name,numlines,defaultanswer,options);
            breaker=0;

            handles.loan=answer_reenter{1};
            handles.monthly_payment=answer_reenter{2};
            handles.yearly_interest=answer_reenter{3};
            handles.loan=str2double(handles.loan);
            handles.monthly_payment=str2double(handles.monthly_payment);
            handles.yearly_interest=str2double(handles.yearly_interest);
        end
    end
if breaker==1
     nothing=0;clear nothing;  
else
    beginningbal=handles.loan;
    
    payment=handles.monthly_payment;
    
    interest=handles.yearly_interest/100*beginningbal;
    
    principal=handles.monthly_payment-interest;
    
    endingbal=beginningbal-principal;
    
    if beginningbal<=payment
        interest=0;
    end
%-------------------------------------------------------------------------
    a=beginningbal;
    b=payment; %constant value b
    c=interest;
    d=principal;
    e=endingbal;
    
    mdata=[a b c d e];
    
    outputmdata=num2cell(mdata);
    set(handles.outputtable,'Data',outputmdata); 
i=1;
while mdata(i,5)>0
    mdata=mdata([1:end,end],:); % extend the array by one row
    % i+1 is this row; i is prior row
    mdata(i+1,1)=mdata(i,5); %beginning balance (ending balance from last row)
    mdata(i+1,2)=mdata(i,2); %payment (same as last row)
    mdata(i+1,3)=mdata(i+1,1)*1.5/12; %interest (based on beginning balance)
    mdata(i+1,4)=mdata(i+1,2)-mdata(i+1,3); %principal (from this row)
    mdata(i+1,5)=mdata(i+1,1)-mdata(i+1,4); %ending balance (from this row)
 
    
    i=i+1;
end
mdata
    outputmdata=num2cell(mdata);
    set(handles.outputtable,'Data',outputmdata);            
    
  
end
        



