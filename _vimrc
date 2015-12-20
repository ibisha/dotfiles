set nocompatible

"Encode
"���L�̎w��͊��ɂ���ĕ�����������\��������̂œK�X�ύX����
set encoding=UTF-8 "�����R�[�h��UTF-8�ɂ���
set fileencoding=UTF-8 "�����R�[�h��UTF-8�ɂ���
set termencoding=UTF-8 "�����R�[�h��UTF-8�ɂ���

"�f�B���N�g���̐ݒ�
let $BACKUP='D:\vimhome\backup'
set directory=$BACKUP
set backupdir=$BACKUP
set undodir=$BACKUP

" vim�N�����̂�runtimepath��neobundle.vim��ǉ�
if has('vim_starting')
  set nocompatible
  set runtimepath+=D:/cygwin/home/hirokin/.vim/bundle/neobundle.vim
endif

" neobundle.vim�̏����� 
" NeoBundle���X�V���邽�߂̐ݒ�
call neobundle#begin(expand('D:/cygwin/home/hirokin/.vim/bundle'))
NeoBundleFetch 'Shougo/neobundle.vim'
call neobundle#end()

" �ǂݍ��ރv���O�C�����L��
call neobundle#begin(expand('D:/cygwin/home/hirokin/.vim/bundle'))
NeoBundle 'Shougo/unite.vim'
NeoBundle 'itchyny/lightline.vim'
call neobundle#end()

" �ǂݍ��񂾃v���O�C�����܂߁A�t�@�C���^�C�v�̌��o�A�t�@�C���^�C�v�ʃv���O�C��/�C���f���g��L��������
filetype plugin indent on

" �C���X�g�[���̃`�F�b�N
call neobundle#begin(expand('D:/cygwin/home/hirokin/.vim/bundle'))
NeoBundleCheck
call neobundle#end()

" ��ʕ\���̐ݒ�
set number         " �s�ԍ���\������
set cursorline     " �J�[�\���s�̔w�i�F��ς���
set cursorcolumn   " �J�[�\���ʒu�̃J�����̔w�i�F��ς���
set laststatus=2   " �X�e�[�^�X�s����ɕ\��
set cmdheight=2    " ���b�Z�[�W�\������2�s�m��
set showmatch      " �Ή����銇�ʂ������\��
set helpheight=999 " �w���v����ʂ����ς��ɊJ��

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
  autocmd VimEnter,ColorScheme * highlight ZenkakuSpace term=underline ctermbg=Red guibg=Red
  autocmd VimEnter,WinEnter * match ZenkakuSpace /�@/
augroup END
