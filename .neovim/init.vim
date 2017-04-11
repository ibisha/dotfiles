set nocompatible
let g:vimproc#download_windows_dll = 1
"$HOME/_vimrc���X�y�[�X�{�h�b�g�ŊJ��
nnoremap <Space>. :<C-u>tabedit $MYVIMRC<CR>
nnoremap <Space>, :<C-u>tabedit $MYVIMRC<CR>

"Encode
"���L�̎w��͊��ɂ���ĕ�����������\��������̂œK�X�ύX����
set encoding=UTF-8 "�����R�[�h��UTF-8�ɂ���
set fileencoding=UTF-8 "�����R�[�h��UTF-8�ɂ���
set termencoding=UTF-8 "�����R�[�h��UTF-8�ɂ���

set shellslash

"�f�B���N�g���̐ݒ�
let $HOME='D:\vimhome'
let $BACKUP='D:\vimhome\backup'
set directory=$BACKUP
set backupdir=$BACKUP
set undodir=$BACKUP

" �v���O�C�������ۂɃC���X�g�[�������f�B���N�g��
let s:dein_dir = expand('$HOME/.cache/dein')
" dein.vim �{��
let s:dein_repo_dir = s:dein_dir . '/repos/github.com/Shougo/dein.vim'

" dein.vim ���Ȃ���� github ���痎�Ƃ��Ă���
if &runtimepath !~# '/dein.vim'
  if !isdirectory(s:dein_repo_dir)
    execute '!git clone https://github.com/Shougo/dein.vim' s:dein_repo_dir
  endif
  execute 'set runtimepath^=' . fnamemodify(s:dein_repo_dir, ':p')
endif

" �ݒ�J�n
if dein#load_state(s:dein_dir)
  call dein#begin(s:dein_dir)

  " �v���O�C�����X�g�����߂� TOML �t�@�C��
  " �\�� TOML �t�@�C���i��q�j��p�ӂ��Ă���
  let g:rc_dir    = expand('~/.vim/rc')
  let s:toml      = g:rc_dir . '/dein.toml'
  let s:lazy_toml = g:rc_dir . '/dein_lazy.toml'

  " TOML ��ǂݍ��݁A�L���b�V�����Ă���
  call dein#load_toml(s:toml,      {'lazy': 0})
  call dein#load_toml(s:lazy_toml, {'lazy': 1})

    " �����A���C���X�g�[�����̂��̂���������C���X�g�[��
    if dein#check_install()
      call dein#install()
    endif

  " �ݒ�I��
  call dein#end()
  call dein#save_state()
endif

" �ǂݍ��񂾃v���O�C�����܂߁A�t�@�C���^�C�v�̌��o�A�t�@�C���^�C�v�ʃv���O�C��/�C���f���g��L��������
filetype plugin indent on

" Move
set backspace=indent,eol,start " Backspace�L�[�̉e���͈͂ɐ�����݂��Ȃ�
set whichwrap=b,s,h,l,<,>,[,]  " �s���s���̍��E�ړ��ōs���܂���
set scrolloff=8                " �㉺8�s�̎��E���m��
set sidescrolloff=16           " ���E�X�N���[�����̎��E���m��
set sidescroll=1               " ���E�X�N���[���͈ꕶ���Âs��

" File
set confirm    " �ۑ�����Ă��Ȃ��t�@�C��������Ƃ��͏I���O�ɕۑ��m�F
set hidden     " �ۑ�����Ă��Ȃ��t�@�C��������Ƃ��ł��ʂ̃t�@�C�����J�����Ƃ��o����
set autoread   "�O���Ńt�@�C���ɕύX�����ꂽ�ꍇ�͓ǂ݂Ȃ���
set nobackup   " �t�@�C���ۑ����Ƀo�b�N�A�b�v�t�@�C�������Ȃ�
set noswapfile " �t�@�C���ҏW���ɃX���b�v�t�@�C�������Ȃ�

" Search/Replace
set hlsearch   " ������������n�C���C�g����
set incsearch  " �C���N�������^���T�[�`���s��
set ignorecase " �啶���Ə���������ʂ��Ȃ�
set smartcase  " �啶���Ə����������݂������t�Ō������s�����ꍇ�Ɍ���A�啶���Ə���������ʂ���
set wrapscan   " �Ō���܂Ō������I�����玟�̌����Ő擪�Ɉڂ�
set gdefault   " �u���̎� g �I�v�V�������f�t�H���g�ŗL���ɂ���

"Input
set expandtab     " �^�u���͂𕡐��̋󔒓��͂ɒu��������
set tabstop=4     " ��ʏ�Ń^�u��������߂镝
set shiftwidth=4  " �����C���f���g�ł���镝
set softtabstop=4 " �A�������󔒂ɑ΂��ă^�u�L�[��o�b�N�X�y�[�X�L�[�ŃJ�[�\����������
set autoindent    " ���s���ɑO�̍s�̃C���f���g���p������
set smartindent   " ���s���ɓ��͂��ꂽ�s�̖����ɍ��킹�Ď��̍s�̃C���f���g�𑝌�����
set textwidth=0

" ������Ƃ̓����֘A�̐ݒ�

" OS�̃N���b�v�{�[�h�����W�X�^�w�薳���� Yank, Put �o����悤�ɂ���
set clipboard=unnamed,unnamedplus
" �}�E�X�̓��͂��󂯕t����
set mouse=a
" Windows �ł��p�X�̋�؂蕶���� / �ɂ���
set shellslash
" �C���T�[�g���[�h���甲����Ǝ����I��IME���I�t�ɂ���
set iminsert=2

" �R�}���h���C���̐ݒ�

" �R�}���h���C�����[�h��TAB�L�[�ɂ��t�@�C�����⊮��L���ɂ���
set wildmenu wildmode=list:longest,full
" �R�}���h���C���̗�����10000���ۑ�����
set history=10000

" �r�[�v�̐ݒ�

"�r�[�v�����ׂĂ𖳌��ɂ���
set visualbell t_vb=
set noerrorbells "�G���[���b�Z�[�W�̕\�����Ƀr�[�v��炳�Ȃ�
  
"" �󔒕�����\��
set list    "�^�u�A�s�����̕s��������\������
set listchars=tab:>.,trail:_,eol:$
scriptencoding utf-8 "�������Ȃ��Ɖ��L�����f����Ȃ�
augroup highlightZenkakuSpace "�S�p�X�y�[�X��ԐF�ɂ���
  autocmd!
  autocmd ColorScheme * highlight ZenkakuSpace term=underline ctermbg=Red guibg=Red
  autocmd VimEnter,WinEnter * match ZenkakuSpace /�@/
augroup END


"==========================
" �I�[�g�R�}���h          =
"==========================
"���̓��[�h���A�X�e�[�^�X���C���̃J���[��ύX

augroup InsertHook
autocmd!
autocmd InsertEnter * highlight StatusLine guifg=#ccdc90 guibg=#2E4340
autocmd InsertLeave * highlight StatusLine guifg=#2E4340 guibg=#ccdc90
augroup END

"�S�p�X�y�[�X��ԐF�ɂ���

augroup highlightZenkakuSpace
  autocmd!
  autocmd VimEnter,ColorScheme * highlight ZenkakuSpace term=underline ctermbg=Red guibg=Red
  autocmd VimEnter,WinEnter * match ZenkakuSpace /�@/
augroup END

"F6�Ŏ��������
nmap <F6> <ESC>a<C-R>=strftime("%Y/%m/%d (%a) %H:%M:%S")

set matchpairs=(:),{:},<:>,[:]
