.class public Lcom/sonymobile/home/search/SearchActivity;
.super Landroid/app/Activity;
.source "SearchActivity.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
.implements Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;
.implements Lcom/sonymobile/home/search/SearchAdapter$SearchSuggestionEventListener;
.implements Lcom/sonymobile/home/search/suggest/OnlineSuggestionsStatusCallback;


# instance fields
.field private mAutoCompleteEditText:Landroid/widget/EditText;

.field private mCallback:Lcom/sonymobile/home/search/suggest/OnlineSuggestions$PermissionRequestCallback;

.field private mClearButton:Landroid/widget/ImageButton;

.field private mContainerView:Landroid/widget/LinearLayout;

.field private final mCurrentConfiguration:Landroid/content/res/Configuration;

.field private final mEditTextKeyListener:Landroid/view/View$OnKeyListener;

.field private final mEditTextWatcher:Landroid/text/TextWatcher;

.field private final mEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

.field private mEnteredSearchTextLength:I

.field private mGenreManager:Lcom/sonymobile/home/search/suggest/PopularGenreManager;

.field private final mHandler:Landroid/os/Handler;

.field private mIsEditTextWatcherEnabled:Z

.field private mIsNewInstance:Z

.field private mIsPartiallyObscured:Z

.field private mPartiallyObscuredThreshold:I

.field private mSavedIsPartiallyObscured:Z

.field private mSearchEditText:Landroid/widget/EditText;

.field private mSearchGridView:Lcom/sonymobile/home/search/SearchRecyclerView;

.field private final mSearchGridViewListener:Lcom/sonymobile/home/search/SearchRecyclerView$SearchRecyclerViewListener;

.field private mSearchResultAdapter:Lcom/sonymobile/home/search/SearchResultAdapter;

.field private mShouldShowStatusBar:Z

.field private mSuggestionsAdapter:Lcom/sonymobile/home/search/SearchSuggestionsAdapter;

.field private final mTmpRect:Landroid/graphics/Rect;

.field private mUserSettings:Lcom/sonymobile/home/settings/UserSettings;

.field private mWelcomeVisible:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 60
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 85
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/home/search/SearchActivity;->mCurrentConfiguration:Landroid/content/res/Configuration;

    .line 87
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/sonymobile/home/search/SearchActivity;->mHandler:Landroid/os/Handler;

    .line 105
    iput-boolean v2, p0, Lcom/sonymobile/home/search/SearchActivity;->mWelcomeVisible:Z

    .line 123
    iput-boolean v2, p0, Lcom/sonymobile/home/search/SearchActivity;->mIsEditTextWatcherEnabled:Z

    .line 130
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/home/search/SearchActivity;->mTmpRect:Landroid/graphics/Rect;

    .line 143
    new-instance v0, Lcom/sonymobile/home/search/SearchActivity$1;

    invoke-direct {v0, p0}, Lcom/sonymobile/home/search/SearchActivity$1;-><init>(Lcom/sonymobile/home/search/SearchActivity;)V

    iput-object v0, p0, Lcom/sonymobile/home/search/SearchActivity;->mEditTextWatcher:Landroid/text/TextWatcher;

    .line 201
    new-instance v0, Lcom/sonymobile/home/search/SearchActivity$2;

    invoke-direct {v0, p0}, Lcom/sonymobile/home/search/SearchActivity$2;-><init>(Lcom/sonymobile/home/search/SearchActivity;)V

    iput-object v0, p0, Lcom/sonymobile/home/search/SearchActivity;->mEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

    .line 226
    new-instance v0, Lcom/sonymobile/home/search/SearchActivity$3;

    invoke-direct {v0, p0}, Lcom/sonymobile/home/search/SearchActivity$3;-><init>(Lcom/sonymobile/home/search/SearchActivity;)V

    iput-object v0, p0, Lcom/sonymobile/home/search/SearchActivity;->mEditTextKeyListener:Landroid/view/View$OnKeyListener;

    .line 254
    new-instance v0, Lcom/sonymobile/home/search/SearchActivity$4;

    invoke-direct {v0, p0}, Lcom/sonymobile/home/search/SearchActivity$4;-><init>(Lcom/sonymobile/home/search/SearchActivity;)V

    iput-object v0, p0, Lcom/sonymobile/home/search/SearchActivity;->mSearchGridViewListener:Lcom/sonymobile/home/search/SearchRecyclerView$SearchRecyclerViewListener;

    return-void
.end method

.method static synthetic access$000(Lcom/sonymobile/home/search/SearchActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/search/SearchActivity;

    .prologue
    .line 60
    iget-boolean v0, p0, Lcom/sonymobile/home/search/SearchActivity;->mIsEditTextWatcherEnabled:Z

    return v0
.end method

.method static synthetic access$100(Lcom/sonymobile/home/search/SearchActivity;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/search/SearchActivity;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/sonymobile/home/search/SearchActivity;->mAutoCompleteEditText:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/sonymobile/home/search/SearchActivity;ILjava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/home/search/SearchActivity;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 60
    invoke-direct {p0, p1, p2}, Lcom/sonymobile/home/search/SearchActivity;->handleClickEvent(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/sonymobile/home/search/SearchActivity;)Lcom/sonymobile/home/search/SearchRecyclerView;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/search/SearchActivity;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/sonymobile/home/search/SearchActivity;->mSearchGridView:Lcom/sonymobile/home/search/SearchRecyclerView;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/sonymobile/home/search/SearchActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/home/search/SearchActivity;

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/sonymobile/home/search/SearchActivity;->hideKeyboard()V

    return-void
.end method

.method static synthetic access$1300(Lcom/sonymobile/home/search/SearchActivity;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/search/SearchActivity;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/sonymobile/home/search/SearchActivity;->mSearchEditText:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/sonymobile/home/search/SearchActivity;ILandroid/content/Intent;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/home/search/SearchActivity;
    .param p1, "x1"    # I
    .param p2, "x2"    # Landroid/content/Intent;

    .prologue
    .line 60
    invoke-direct {p0, p1, p2}, Lcom/sonymobile/home/search/SearchActivity;->finishWithResult(ILandroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/sonymobile/home/search/SearchActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/home/search/SearchActivity;

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/sonymobile/home/search/SearchActivity;->showWelcomeScreen()V

    return-void
.end method

.method static synthetic access$1600(Lcom/sonymobile/home/search/SearchActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/search/SearchActivity;

    .prologue
    .line 60
    iget-boolean v0, p0, Lcom/sonymobile/home/search/SearchActivity;->mWelcomeVisible:Z

    return v0
.end method

.method static synthetic access$1702(Lcom/sonymobile/home/search/SearchActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/home/search/SearchActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 60
    iput-boolean p1, p0, Lcom/sonymobile/home/search/SearchActivity;->mIsNewInstance:Z

    return p1
.end method

.method static synthetic access$1800(Lcom/sonymobile/home/search/SearchActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/home/search/SearchActivity;

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/sonymobile/home/search/SearchActivity;->initKeyboardVisibility()V

    return-void
.end method

.method static synthetic access$1900(Lcom/sonymobile/home/search/SearchActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/home/search/SearchActivity;

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/sonymobile/home/search/SearchActivity;->showContainer()V

    return-void
.end method

.method static synthetic access$200(Lcom/sonymobile/home/search/SearchActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/search/SearchActivity;

    .prologue
    .line 60
    iget v0, p0, Lcom/sonymobile/home/search/SearchActivity;->mEnteredSearchTextLength:I

    return v0
.end method

.method static synthetic access$202(Lcom/sonymobile/home/search/SearchActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/home/search/SearchActivity;
    .param p1, "x1"    # I

    .prologue
    .line 60
    iput p1, p0, Lcom/sonymobile/home/search/SearchActivity;->mEnteredSearchTextLength:I

    return p1
.end method

.method static synthetic access$300(Lcom/sonymobile/home/search/SearchActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/home/search/SearchActivity;

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/sonymobile/home/search/SearchActivity;->showSuggestions()V

    return-void
.end method

.method static synthetic access$400(Lcom/sonymobile/home/search/SearchActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/home/search/SearchActivity;

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/sonymobile/home/search/SearchActivity;->showSearchResults()V

    return-void
.end method

.method static synthetic access$500(Lcom/sonymobile/home/search/SearchActivity;)Lcom/sonymobile/home/search/SearchResultAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/search/SearchActivity;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/sonymobile/home/search/SearchActivity;->mSearchResultAdapter:Lcom/sonymobile/home/search/SearchResultAdapter;

    return-object v0
.end method

.method static synthetic access$600(Lcom/sonymobile/home/search/SearchActivity;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/home/search/SearchActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/sonymobile/home/search/SearchActivity;->updateCompletionText(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$700(Lcom/sonymobile/home/search/SearchActivity;)Lcom/sonymobile/home/search/SearchAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/search/SearchActivity;

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/sonymobile/home/search/SearchActivity;->getCurrentSearchAdapter()Lcom/sonymobile/home/search/SearchAdapter;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/sonymobile/home/search/SearchActivity;ILjava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/home/search/SearchActivity;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 60
    invoke-direct {p0, p1, p2}, Lcom/sonymobile/home/search/SearchActivity;->postClickEvent(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$900(Lcom/sonymobile/home/search/SearchActivity;Lcom/sonymobile/home/search/SearchResultAdapter;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/home/search/SearchActivity;
    .param p1, "x1"    # Lcom/sonymobile/home/search/SearchResultAdapter;

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/sonymobile/home/search/SearchActivity;->handleSearchOnGooglePlay(Lcom/sonymobile/home/search/SearchResultAdapter;)V

    return-void
.end method

.method private checkIfActivityShouldBeFinishedDueToConfigChange(Landroid/content/res/Configuration;)Z
    .locals 8
    .param p1, "oldConfiguration"    # Landroid/content/res/Configuration;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 782
    if-nez p1, :cond_0

    .line 794
    :goto_0
    return v5

    .line 787
    :cond_0
    iget-object v6, p0, Lcom/sonymobile/home/search/SearchActivity;->mCurrentConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {p1, v6}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    move-result v1

    .line 788
    .local v1, "changes":I
    if-eqz v1, :cond_1

    move v2, v4

    .line 791
    .local v2, "configChange":Z
    :goto_1
    const/16 v3, 0x80

    .line 792
    .local v3, "orientation":I
    and-int/lit16 v6, v1, 0x80

    const/16 v7, 0x80

    if-ne v6, v7, :cond_2

    move v0, v4

    .line 794
    .local v0, "causedByOrientationChange":Z
    :goto_2
    if-eqz v2, :cond_3

    if-nez v0, :cond_3

    :goto_3
    move v5, v4

    goto :goto_0

    .end local v0    # "causedByOrientationChange":Z
    .end local v2    # "configChange":Z
    .end local v3    # "orientation":I
    :cond_1
    move v2, v5

    .line 788
    goto :goto_1

    .restart local v2    # "configChange":Z
    .restart local v3    # "orientation":I
    :cond_2
    move v0, v5

    .line 792
    goto :goto_2

    .restart local v0    # "causedByOrientationChange":Z
    :cond_3
    move v4, v5

    .line 794
    goto :goto_3
.end method

.method private finishWithResult(ILandroid/content/Intent;)V
    .locals 2
    .param p1, "resultCode"    # I
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 758
    invoke-direct {p0}, Lcom/sonymobile/home/search/SearchActivity;->hideKeyboard()V

    .line 759
    const-string v0, ""

    invoke-direct {p0, v0}, Lcom/sonymobile/home/search/SearchActivity;->updateEditText(Ljava/lang/String;)V

    .line 760
    iget-object v0, p0, Lcom/sonymobile/home/search/SearchActivity;->mAutoCompleteEditText:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 761
    iget-object v0, p0, Lcom/sonymobile/home/search/SearchActivity;->mSearchEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->clearFocus()V

    .line 763
    invoke-virtual {p0}, Lcom/sonymobile/home/search/SearchActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 764
    invoke-virtual {p0, p1, p2}, Lcom/sonymobile/home/search/SearchActivity;->setResult(ILandroid/content/Intent;)V

    .line 765
    invoke-virtual {p0}, Lcom/sonymobile/home/search/SearchActivity;->finish()V

    .line 769
    const/4 v0, 0x0

    const v1, 0x10a0001

    invoke-virtual {p0, v0, v1}, Lcom/sonymobile/home/search/SearchActivity;->overridePendingTransition(II)V

    .line 771
    :cond_0
    return-void
.end method

.method private getCurrentSearchAdapter()Lcom/sonymobile/home/search/SearchAdapter;
    .locals 1

    .prologue
    .line 434
    iget-object v0, p0, Lcom/sonymobile/home/search/SearchActivity;->mSearchGridView:Lcom/sonymobile/home/search/SearchRecyclerView;

    invoke-virtual {v0}, Lcom/sonymobile/home/search/SearchRecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/home/search/SearchAdapter;

    return-object v0
.end method

.method public static getPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 877
    const-string v0, "app_search_prefs"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method private getViewFromSearchSuggestionId(I)Landroid/view/View;
    .locals 4
    .param p1, "id"    # I

    .prologue
    .line 739
    const/4 v0, 0x0

    .line 740
    .local v0, "itemView":Landroid/view/View;
    invoke-direct {p0}, Lcom/sonymobile/home/search/SearchActivity;->getCurrentSearchAdapter()Lcom/sonymobile/home/search/SearchAdapter;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/sonymobile/home/search/SearchAdapter;->getPositionFromSuggestionId(I)I

    move-result v2

    .line 741
    .local v2, "position":I
    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 742
    iget-object v3, p0, Lcom/sonymobile/home/search/SearchActivity;->mSearchGridView:Lcom/sonymobile/home/search/SearchRecyclerView;

    invoke-virtual {v3, v2}, Lcom/sonymobile/home/search/SearchRecyclerView;->findViewHolderForLayoutPosition(I)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v1

    .line 743
    .local v1, "itemViewHolder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    if-eqz v1, :cond_0

    .line 744
    iget-object v0, v1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 748
    .end local v1    # "itemViewHolder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    :cond_0
    return-object v0
.end method

.method private handleClickEvent(ILandroid/view/View;Ljava/lang/String;)V
    .locals 2
    .param p1, "searchSuggestionId"    # I
    .param p2, "view"    # Landroid/view/View;
    .param p3, "action"    # Ljava/lang/String;

    .prologue
    .line 728
    const/high16 v1, -0x80000000

    if-eq p1, v1, :cond_1

    .line 729
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 730
    .local v0, "intent":Landroid/content/Intent;
    if-eqz p2, :cond_0

    iget-object v1, p0, Lcom/sonymobile/home/search/SearchActivity;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p2, v1}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 731
    iget-object v1, p0, Lcom/sonymobile/home/search/SearchActivity;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setSourceBounds(Landroid/graphics/Rect;)V

    .line 733
    :cond_0
    const-string v1, "com.sonymobile.home.search.intent.extra.SEARCH_SUGGESTION_UNIQUE_ID"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 734
    const/4 v1, -0x1

    invoke-direct {p0, v1, v0}, Lcom/sonymobile/home/search/SearchActivity;->finishWithResult(ILandroid/content/Intent;)V

    .line 736
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_1
    return-void
.end method

.method private handleClickEvent(ILjava/lang/String;)V
    .locals 1
    .param p1, "searchSuggestionId"    # I
    .param p2, "action"    # Ljava/lang/String;

    .prologue
    .line 717
    invoke-direct {p0, p1}, Lcom/sonymobile/home/search/SearchActivity;->getViewFromSearchSuggestionId(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, p1, v0, p2}, Lcom/sonymobile/home/search/SearchActivity;->handleClickEvent(ILandroid/view/View;Ljava/lang/String;)V

    .line 718
    return-void
.end method

.method private handleSearchOnGooglePlay(Lcom/sonymobile/home/search/SearchResultAdapter;)V
    .locals 2
    .param p1, "searchAdapter"    # Lcom/sonymobile/home/search/SearchResultAdapter;

    .prologue
    .line 217
    invoke-virtual {p1}, Lcom/sonymobile/home/search/SearchResultAdapter;->getGooglePlayQuery()Ljava/lang/String;

    move-result-object v0

    .line 218
    .local v0, "query":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 219
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sonymobile/home/search/SearchActivity;->onSuggestionClick(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    :cond_0
    return-void
.end method

.method private hideKeyboard()V
    .locals 4

    .prologue
    .line 680
    invoke-virtual {p0}, Lcom/sonymobile/home/search/SearchActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 681
    .local v1, "window":Landroid/view/Window;
    if-eqz v1, :cond_0

    .line 682
    const-string v2, "input_method"

    invoke-virtual {p0, v2}, Lcom/sonymobile/home/search/SearchActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 684
    .local v0, "inputMethodManager":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 686
    const/16 v2, 0x23

    invoke-virtual {v1, v2}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 690
    .end local v0    # "inputMethodManager":Landroid/view/inputmethod/InputMethodManager;
    :cond_0
    return-void
.end method

.method private initConfiguration(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 515
    iget-object v2, p0, Lcom/sonymobile/home/search/SearchActivity;->mCurrentConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {p0}, Lcom/sonymobile/home/search/SearchActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 517
    const/4 v1, 0x0

    .line 518
    .local v1, "shouldFinishActivity":Z
    if-eqz p1, :cond_0

    .line 522
    const-string v2, "instance_state_configuration"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/res/Configuration;

    .line 523
    .local v0, "oldConfig":Landroid/content/res/Configuration;
    invoke-direct {p0, v0}, Lcom/sonymobile/home/search/SearchActivity;->checkIfActivityShouldBeFinishedDueToConfigChange(Landroid/content/res/Configuration;)Z

    move-result v1

    .line 526
    .end local v0    # "oldConfig":Landroid/content/res/Configuration;
    :cond_0
    if-eqz v1, :cond_1

    .line 527
    iget-object v2, p0, Lcom/sonymobile/home/search/SearchActivity;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/sonymobile/home/search/SearchActivity$7;

    invoke-direct {v3, p0}, Lcom/sonymobile/home/search/SearchActivity$7;-><init>(Lcom/sonymobile/home/search/SearchActivity;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 534
    :cond_1
    return-void
.end method

.method private initKeyboardVisibility()V
    .locals 5

    .prologue
    .line 458
    invoke-virtual {p0}, Lcom/sonymobile/home/search/SearchActivity;->getWindow()Landroid/view/Window;

    move-result-object v3

    .line 459
    .local v3, "window":Landroid/view/Window;
    if-nez v3, :cond_1

    .line 483
    :cond_0
    :goto_0
    return-void

    .line 464
    :cond_1
    iget-boolean v4, p0, Lcom/sonymobile/home/search/SearchActivity;->mIsNewInstance:Z

    if-eqz v4, :cond_2

    .line 465
    invoke-virtual {p0}, Lcom/sonymobile/home/search/SearchActivity;->getApplication()Landroid/app/Application;

    move-result-object v4

    check-cast v4, Lcom/sonymobile/home/HomeApplication;

    invoke-virtual {v4}, Lcom/sonymobile/home/HomeApplication;->getUserSettings()Lcom/sonymobile/home/settings/UserSettings;

    move-result-object v2

    .line 466
    .local v2, "userSettings":Lcom/sonymobile/home/settings/UserSettings;
    invoke-virtual {v2}, Lcom/sonymobile/home/settings/UserSettings;->isKeyboardShownWhenEnteringSearchApps()Z

    move-result v0

    .line 474
    .end local v2    # "userSettings":Lcom/sonymobile/home/settings/UserSettings;
    .local v0, "show":Z
    :goto_1
    if-eqz v0, :cond_3

    const/4 v1, 0x5

    .line 477
    .local v1, "softInputVisibility":I
    :goto_2
    or-int/lit8 v4, v1, 0x20

    invoke-virtual {v3, v4}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 480
    if-eqz v0, :cond_0

    .line 481
    iget-object v4, p0, Lcom/sonymobile/home/search/SearchActivity;->mSearchEditText:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->requestFocus()Z

    goto :goto_0

    .line 468
    .end local v0    # "show":Z
    .end local v1    # "softInputVisibility":I
    :cond_2
    iget-boolean v4, p0, Lcom/sonymobile/home/search/SearchActivity;->mSavedIsPartiallyObscured:Z

    iput-boolean v4, p0, Lcom/sonymobile/home/search/SearchActivity;->mIsPartiallyObscured:Z

    .line 471
    iget-boolean v0, p0, Lcom/sonymobile/home/search/SearchActivity;->mIsPartiallyObscured:Z

    .restart local v0    # "show":Z
    goto :goto_1

    .line 474
    :cond_3
    const/4 v1, 0x3

    goto :goto_2
.end method

.method private initScreenOrientation()V
    .locals 3

    .prologue
    .line 443
    invoke-virtual {p0}, Lcom/sonymobile/home/search/SearchActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a000c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 446
    const/4 v0, 0x1

    .line 451
    .local v0, "orientation":I
    :goto_0
    invoke-virtual {p0, v0}, Lcom/sonymobile/home/search/SearchActivity;->setRequestedOrientation(I)V

    .line 452
    return-void

    .line 448
    .end local v0    # "orientation":I
    :cond_0
    const/4 v0, 0x4

    .restart local v0    # "orientation":I
    goto :goto_0
.end method

.method private initStatusBarVisibility()V
    .locals 6

    .prologue
    const/16 v5, 0x400

    .line 489
    invoke-virtual {p0}, Lcom/sonymobile/home/search/SearchActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    .line 490
    .local v2, "window":Landroid/view/Window;
    if-nez v2, :cond_0

    .line 507
    :goto_0
    return-void

    .line 494
    :cond_0
    invoke-virtual {p0}, Lcom/sonymobile/home/search/SearchActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 495
    .local v0, "extras":Landroid/os/Bundle;
    const/4 v1, 0x0

    .line 496
    .local v1, "showStatusBar":Z
    if-eqz v0, :cond_1

    .line 497
    const-string v3, "com.sonymobile.home.search.intent.extra.SHOW_STATUS_BAR"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 500
    :cond_1
    if-eqz v1, :cond_2

    .line 501
    invoke-virtual {v2, v5}, Landroid/view/Window;->clearFlags(I)V

    .line 506
    :goto_1
    iput-boolean v1, p0, Lcom/sonymobile/home/search/SearchActivity;->mShouldShowStatusBar:Z

    goto :goto_0

    .line 503
    :cond_2
    invoke-virtual {v2, v5}, Landroid/view/Window;->addFlags(I)V

    goto :goto_1
.end method

.method private isSupportingCompletion(Ljava/lang/CharSequence;)Z
    .locals 4
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 188
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 189
    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 190
    .local v0, "c":C
    invoke-static {v0}, Ljava/lang/Character;->getDirectionality(C)B

    move-result v1

    .line 191
    .local v1, "directionality":B
    const/4 v3, 0x2

    if-ne v1, v3, :cond_0

    .line 192
    const/4 v3, 0x0

    .line 195
    .end local v0    # "c":C
    .end local v1    # "directionality":B
    :goto_1
    return v3

    .line 188
    .restart local v0    # "c":C
    .restart local v1    # "directionality":B
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 195
    .end local v0    # "c":C
    .end local v1    # "directionality":B
    :cond_1
    const/4 v3, 0x1

    goto :goto_1
.end method

.method private onPrivacyRequestFinished(I)V
    .locals 4
    .param p1, "resultCode"    # I

    .prologue
    const/4 v3, 0x1

    .line 400
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sonymobile/home/search/SearchActivity;->mWelcomeVisible:Z

    .line 401
    if-nez p1, :cond_0

    .line 402
    invoke-virtual {p0}, Lcom/sonymobile/home/search/SearchActivity;->finish()V

    .line 420
    :goto_0
    return-void

    .line 404
    :cond_0
    invoke-static {p0}, Lcom/sonymobile/home/search/SearchActivity;->getPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 405
    .local v0, "preferences":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "has_seen_welcome_screen"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 410
    const/4 v1, -0x1

    if-ne p1, v1, :cond_1

    .line 411
    iget-object v1, p0, Lcom/sonymobile/home/search/SearchActivity;->mUserSettings:Lcom/sonymobile/home/settings/UserSettings;

    const-string v2, "WelcomeScreen"

    invoke-virtual {v1, v3, v2}, Lcom/sonymobile/home/settings/UserSettings;->setPersonalizeRecommendations(ZLjava/lang/String;)V

    .line 414
    iget-object v1, p0, Lcom/sonymobile/home/search/SearchActivity;->mSuggestionsAdapter:Lcom/sonymobile/home/search/SearchSuggestionsAdapter;

    invoke-virtual {v1, p0}, Lcom/sonymobile/home/search/SearchSuggestionsAdapter;->reloadPersonalizedRecommendations(Landroid/content/Context;)V

    .line 416
    :cond_1
    iput-boolean v3, p0, Lcom/sonymobile/home/search/SearchActivity;->mIsNewInstance:Z

    .line 417
    invoke-direct {p0}, Lcom/sonymobile/home/search/SearchActivity;->initKeyboardVisibility()V

    .line 418
    invoke-direct {p0}, Lcom/sonymobile/home/search/SearchActivity;->showContainer()V

    goto :goto_0
.end method

.method private postClickEvent(ILjava/lang/String;)V
    .locals 2
    .param p1, "searchSuggestionId"    # I
    .param p2, "action"    # Ljava/lang/String;

    .prologue
    .line 700
    const/high16 v0, -0x80000000

    if-eq p1, v0, :cond_0

    .line 701
    iget-object v0, p0, Lcom/sonymobile/home/search/SearchActivity;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/sonymobile/home/search/SearchActivity$8;

    invoke-direct {v1, p0, p1, p2}, Lcom/sonymobile/home/search/SearchActivity$8;-><init>(Lcom/sonymobile/home/search/SearchActivity;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 708
    :cond_0
    return-void
.end method

.method private setupButtons()V
    .locals 2

    .prologue
    .line 358
    const v0, 0x7f0f00cc

    invoke-virtual {p0, v0}, Lcom/sonymobile/home/search/SearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/sonymobile/home/search/SearchActivity;->mClearButton:Landroid/widget/ImageButton;

    .line 359
    iget-object v0, p0, Lcom/sonymobile/home/search/SearchActivity;->mClearButton:Landroid/widget/ImageButton;

    new-instance v1, Lcom/sonymobile/home/search/SearchActivity$6;

    invoke-direct {v1, p0}, Lcom/sonymobile/home/search/SearchActivity$6;-><init>(Lcom/sonymobile/home/search/SearchActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 368
    return-void
.end method

.method private setupContainerView()V
    .locals 3

    .prologue
    .line 371
    const v1, 0x7f0f00c9

    invoke-virtual {p0, v1}, Lcom/sonymobile/home/search/SearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/sonymobile/home/search/SearchActivity;->mContainerView:Landroid/widget/LinearLayout;

    .line 372
    invoke-virtual {p0}, Lcom/sonymobile/home/search/SearchActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b00ed

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/sonymobile/home/search/SearchActivity;->mPartiallyObscuredThreshold:I

    .line 375
    iget-object v1, p0, Lcom/sonymobile/home/search/SearchActivity;->mContainerView:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 376
    .local v0, "viewTreeObserver":Landroid/view/ViewTreeObserver;
    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 377
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    .line 378
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 380
    :cond_0
    return-void
.end method

.method private setupEditText()V
    .locals 2

    .prologue
    .line 349
    const v0, 0x7f0f00cb

    invoke-virtual {p0, v0}, Lcom/sonymobile/home/search/SearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/sonymobile/home/search/SearchActivity;->mSearchEditText:Landroid/widget/EditText;

    .line 350
    iget-object v0, p0, Lcom/sonymobile/home/search/SearchActivity;->mSearchEditText:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/sonymobile/home/search/SearchActivity;->mEditTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 351
    iget-object v0, p0, Lcom/sonymobile/home/search/SearchActivity;->mSearchEditText:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/sonymobile/home/search/SearchActivity;->mEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 352
    iget-object v0, p0, Lcom/sonymobile/home/search/SearchActivity;->mSearchEditText:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/sonymobile/home/search/SearchActivity;->mEditTextKeyListener:Landroid/view/View$OnKeyListener;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 354
    const v0, 0x7f0f00ca

    invoke-virtual {p0, v0}, Lcom/sonymobile/home/search/SearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/sonymobile/home/search/SearchActivity;->mAutoCompleteEditText:Landroid/widget/EditText;

    .line 355
    return-void
.end method

.method private setupSearchGridView()V
    .locals 8

    .prologue
    .line 313
    invoke-virtual {p0}, Lcom/sonymobile/home/search/SearchActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 314
    .local v7, "res":Landroid/content/res/Resources;
    const v0, 0x7f0d0018

    invoke-virtual {v7, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    .line 316
    .local v4, "numberOfColumns":I
    const v0, 0x7f0f00cd

    invoke-virtual {p0, v0}, Lcom/sonymobile/home/search/SearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/home/search/SearchRecyclerView;

    iput-object v0, p0, Lcom/sonymobile/home/search/SearchActivity;->mSearchGridView:Lcom/sonymobile/home/search/SearchRecyclerView;

    .line 317
    new-instance v6, Landroid/support/v7/widget/GridLayoutManager;

    invoke-direct {v6, p0, v4}, Landroid/support/v7/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 318
    .local v6, "layoutManager":Landroid/support/v7/widget/GridLayoutManager;
    iget-object v0, p0, Lcom/sonymobile/home/search/SearchActivity;->mSearchGridView:Lcom/sonymobile/home/search/SearchRecyclerView;

    invoke-virtual {v0, v6}, Lcom/sonymobile/home/search/SearchRecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 319
    iget-object v0, p0, Lcom/sonymobile/home/search/SearchActivity;->mSearchGridView:Lcom/sonymobile/home/search/SearchRecyclerView;

    new-instance v1, Lcom/sonymobile/home/search/MarginDividerDecoration;

    invoke-direct {v1, p0}, Lcom/sonymobile/home/search/MarginDividerDecoration;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/sonymobile/home/search/SearchRecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 321
    new-instance v0, Lcom/sonymobile/home/search/SearchResultAdapter;

    iget-object v1, p0, Lcom/sonymobile/home/search/SearchActivity;->mUserSettings:Lcom/sonymobile/home/settings/UserSettings;

    invoke-direct {v0, p0, v4, v1}, Lcom/sonymobile/home/search/SearchResultAdapter;-><init>(Landroid/content/Context;ILcom/sonymobile/home/settings/UserSettings;)V

    iput-object v0, p0, Lcom/sonymobile/home/search/SearchActivity;->mSearchResultAdapter:Lcom/sonymobile/home/search/SearchResultAdapter;

    .line 322
    iget-object v0, p0, Lcom/sonymobile/home/search/SearchActivity;->mSearchResultAdapter:Lcom/sonymobile/home/search/SearchResultAdapter;

    invoke-virtual {v0, p0}, Lcom/sonymobile/home/search/SearchResultAdapter;->setSearchSuggestionEventListener(Lcom/sonymobile/home/search/SearchAdapter$SearchSuggestionEventListener;)V

    .line 324
    invoke-static {p0}, Lcom/sonymobile/home/HomeApplication;->getSearchSuggestionsModel(Landroid/content/Context;)Lcom/sonymobile/home/search/SearchSuggestionsModel;

    move-result-object v3

    .line 327
    .local v3, "searchSuggestionsModel":Lcom/sonymobile/home/search/SearchSuggestionsModel;
    new-instance v0, Lcom/sonymobile/home/search/SearchSuggestionsAdapter;

    iget-object v2, p0, Lcom/sonymobile/home/search/SearchActivity;->mUserSettings:Lcom/sonymobile/home/settings/UserSettings;

    move-object v1, p0

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/sonymobile/home/search/SearchSuggestionsAdapter;-><init>(Landroid/content/Context;Lcom/sonymobile/home/settings/UserSettings;Lcom/sonymobile/home/search/SearchSuggestionsModel;ILcom/sonymobile/home/search/suggest/OnlineSuggestionsStatusCallback;)V

    iput-object v0, p0, Lcom/sonymobile/home/search/SearchActivity;->mSuggestionsAdapter:Lcom/sonymobile/home/search/SearchSuggestionsAdapter;

    .line 330
    iget-object v0, p0, Lcom/sonymobile/home/search/SearchActivity;->mSuggestionsAdapter:Lcom/sonymobile/home/search/SearchSuggestionsAdapter;

    invoke-virtual {v0, p0}, Lcom/sonymobile/home/search/SearchSuggestionsAdapter;->setSearchSuggestionEventListener(Lcom/sonymobile/home/search/SearchAdapter$SearchSuggestionEventListener;)V

    .line 331
    iget-object v0, p0, Lcom/sonymobile/home/search/SearchActivity;->mSuggestionsAdapter:Lcom/sonymobile/home/search/SearchSuggestionsAdapter;

    invoke-virtual {v0}, Lcom/sonymobile/home/search/SearchSuggestionsAdapter;->getSpanSizeLookup()Lcom/sonymobile/home/search/SearchAdapter$SpanSizeLookup;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/support/v7/widget/GridLayoutManager;->setSpanSizeLookup(Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;)V

    .line 333
    iget-object v0, p0, Lcom/sonymobile/home/search/SearchActivity;->mSearchGridView:Lcom/sonymobile/home/search/SearchRecyclerView;

    iget-object v1, p0, Lcom/sonymobile/home/search/SearchActivity;->mUserSettings:Lcom/sonymobile/home/settings/UserSettings;

    invoke-virtual {v0, v1}, Lcom/sonymobile/home/search/SearchRecyclerView;->setUserSettings(Lcom/sonymobile/home/settings/UserSettings;)V

    .line 334
    iget-object v0, p0, Lcom/sonymobile/home/search/SearchActivity;->mSearchGridView:Lcom/sonymobile/home/search/SearchRecyclerView;

    iget-object v1, p0, Lcom/sonymobile/home/search/SearchActivity;->mSuggestionsAdapter:Lcom/sonymobile/home/search/SearchSuggestionsAdapter;

    invoke-virtual {v0, v1}, Lcom/sonymobile/home/search/SearchRecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 335
    iget-object v0, p0, Lcom/sonymobile/home/search/SearchActivity;->mSearchGridView:Lcom/sonymobile/home/search/SearchRecyclerView;

    iget-object v1, p0, Lcom/sonymobile/home/search/SearchActivity;->mSearchGridViewListener:Lcom/sonymobile/home/search/SearchRecyclerView$SearchRecyclerViewListener;

    invoke-virtual {v0, v1}, Lcom/sonymobile/home/search/SearchRecyclerView;->setViewListener(Lcom/sonymobile/home/search/SearchRecyclerView$SearchRecyclerViewListener;)V

    .line 336
    iget-object v0, p0, Lcom/sonymobile/home/search/SearchActivity;->mSearchGridView:Lcom/sonymobile/home/search/SearchRecyclerView;

    new-instance v1, Lcom/sonymobile/home/search/SearchActivity$5;

    invoke-direct {v1, p0}, Lcom/sonymobile/home/search/SearchActivity$5;-><init>(Lcom/sonymobile/home/search/SearchActivity;)V

    invoke-virtual {v0, v1}, Lcom/sonymobile/home/search/SearchRecyclerView;->addOnScrollListener(Landroid/support/v7/widget/RecyclerView$OnScrollListener;)V

    .line 346
    return-void
.end method

.method private showContainer()V
    .locals 2

    .prologue
    .line 423
    iget-object v0, p0, Lcom/sonymobile/home/search/SearchActivity;->mContainerView:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 424
    return-void
.end method

.method private showSearchResults()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 383
    iget-object v0, p0, Lcom/sonymobile/home/search/SearchActivity;->mSearchGridView:Lcom/sonymobile/home/search/SearchRecyclerView;

    invoke-virtual {v0}, Lcom/sonymobile/home/search/SearchRecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/GridLayoutManager;

    iget-object v1, p0, Lcom/sonymobile/home/search/SearchActivity;->mSearchResultAdapter:Lcom/sonymobile/home/search/SearchResultAdapter;

    invoke-virtual {v1}, Lcom/sonymobile/home/search/SearchResultAdapter;->getSpanSizeLookup()Lcom/sonymobile/home/search/SearchAdapter$SpanSizeLookup;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/GridLayoutManager;->setSpanSizeLookup(Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;)V

    .line 385
    iget-object v0, p0, Lcom/sonymobile/home/search/SearchActivity;->mSearchGridView:Lcom/sonymobile/home/search/SearchRecyclerView;

    iget-object v1, p0, Lcom/sonymobile/home/search/SearchActivity;->mSearchResultAdapter:Lcom/sonymobile/home/search/SearchResultAdapter;

    invoke-virtual {v0, v1, v2}, Lcom/sonymobile/home/search/SearchRecyclerView;->swapAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;Z)V

    .line 386
    iget-object v0, p0, Lcom/sonymobile/home/search/SearchActivity;->mClearButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 387
    return-void
.end method

.method private showSuggestions()V
    .locals 3

    .prologue
    .line 427
    iget-object v0, p0, Lcom/sonymobile/home/search/SearchActivity;->mSearchGridView:Lcom/sonymobile/home/search/SearchRecyclerView;

    invoke-virtual {v0}, Lcom/sonymobile/home/search/SearchRecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/GridLayoutManager;

    iget-object v1, p0, Lcom/sonymobile/home/search/SearchActivity;->mSuggestionsAdapter:Lcom/sonymobile/home/search/SearchSuggestionsAdapter;

    invoke-virtual {v1}, Lcom/sonymobile/home/search/SearchSuggestionsAdapter;->getSpanSizeLookup()Lcom/sonymobile/home/search/SearchAdapter$SpanSizeLookup;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/GridLayoutManager;->setSpanSizeLookup(Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;)V

    .line 429
    iget-object v0, p0, Lcom/sonymobile/home/search/SearchActivity;->mSearchGridView:Lcom/sonymobile/home/search/SearchRecyclerView;

    iget-object v1, p0, Lcom/sonymobile/home/search/SearchActivity;->mSuggestionsAdapter:Lcom/sonymobile/home/search/SearchSuggestionsAdapter;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/sonymobile/home/search/SearchRecyclerView;->swapAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;Z)V

    .line 430
    iget-object v0, p0, Lcom/sonymobile/home/search/SearchActivity;->mClearButton:Landroid/widget/ImageButton;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 431
    return-void
.end method

.method private showWelcomeScreen()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 869
    iput-boolean v3, p0, Lcom/sonymobile/home/search/SearchActivity;->mWelcomeVisible:Z

    .line 870
    invoke-virtual {p0}, Lcom/sonymobile/home/search/SearchActivity;->getRequestedOrientation()I

    move-result v1

    .line 871
    .local v1, "requestedOrientation":I
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/sonymobile/home/search/suggest/PrivacyConsentActivity;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 872
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "key_requested_orientation"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 873
    invoke-virtual {p0, v0, v3}, Lcom/sonymobile/home/search/SearchActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 874
    return-void
.end method

.method private storeGenre(Ljava/lang/String;)V
    .locals 1
    .param p1, "genre"    # Ljava/lang/String;

    .prologue
    .line 661
    iget-object v0, p0, Lcom/sonymobile/home/search/SearchActivity;->mGenreManager:Lcom/sonymobile/home/search/suggest/PopularGenreManager;

    invoke-virtual {v0, p1}, Lcom/sonymobile/home/search/suggest/PopularGenreManager;->update(Ljava/lang/String;)V

    .line 662
    return-void
.end method

.method private updateCompletionText(Ljava/lang/String;)V
    .locals 4
    .param p1, "searchText"    # Ljava/lang/String;

    .prologue
    .line 178
    iget-object v2, p0, Lcom/sonymobile/home/search/SearchActivity;->mSearchResultAdapter:Lcom/sonymobile/home/search/SearchResultAdapter;

    invoke-virtual {v2}, Lcom/sonymobile/home/search/SearchResultAdapter;->getFirstSearchLabel()Ljava/lang/String;

    move-result-object v0

    .line 179
    .local v0, "matchedText":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-direct {p0, p1}, Lcom/sonymobile/home/search/SearchActivity;->isSupportingCompletion(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 182
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 183
    .local v1, "suggestion":Ljava/lang/String;
    iget-object v2, p0, Lcom/sonymobile/home/search/SearchActivity;->mAutoCompleteEditText:Landroid/widget/EditText;

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 185
    .end local v1    # "suggestion":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private updateEditText(Ljava/lang/String;)V
    .locals 3
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 670
    iget-boolean v0, p0, Lcom/sonymobile/home/search/SearchActivity;->mIsEditTextWatcherEnabled:Z

    .line 671
    .local v0, "wasEditTextWatcherEnabled":Z
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sonymobile/home/search/SearchActivity;->mIsEditTextWatcherEnabled:Z

    .line 672
    iget-object v1, p0, Lcom/sonymobile/home/search/SearchActivity;->mSearchEditText:Landroid/widget/EditText;

    sget-object v2, Landroid/widget/TextView$BufferType;->EDITABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {v1, p1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 673
    iput-boolean v0, p0, Lcom/sonymobile/home/search/SearchActivity;->mIsEditTextWatcherEnabled:Z

    .line 674
    return-void
.end method

.method private updateWelcomeScreenStatus()V
    .locals 3

    .prologue
    .line 827
    new-instance v0, Lcom/sonymobile/home/search/SearchActivity$9;

    invoke-direct {v0, p0}, Lcom/sonymobile/home/search/SearchActivity$9;-><init>(Lcom/sonymobile/home/search/SearchActivity;)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/sonymobile/home/search/SearchActivity$9;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 866
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v0, 0x1

    .line 392
    if-ne p1, v0, :cond_1

    .line 393
    invoke-direct {p0, p2}, Lcom/sonymobile/home/search/SearchActivity;->onPrivacyRequestFinished(I)V

    .line 397
    :cond_0
    :goto_0
    return-void

    .line 394
    :cond_1
    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    iget-object v1, p0, Lcom/sonymobile/home/search/SearchActivity;->mCallback:Lcom/sonymobile/home/search/suggest/OnlineSuggestions$PermissionRequestCallback;

    if-eqz v1, :cond_0

    .line 395
    iget-object v1, p0, Lcom/sonymobile/home/search/SearchActivity;->mCallback:Lcom/sonymobile/home/search/suggest/OnlineSuggestions$PermissionRequestCallback;

    const/4 v2, -0x1

    if-ne p2, v2, :cond_2

    :goto_1
    invoke-interface {v1, v0}, Lcom/sonymobile/home/search/suggest/OnlineSuggestions$PermissionRequestCallback;->onRequestComplete(Z)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v1, 0x0

    .line 276
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 278
    const v0, 0x7f030036

    invoke-virtual {p0, v0}, Lcom/sonymobile/home/search/SearchActivity;->setContentView(I)V

    .line 280
    invoke-virtual {p0}, Lcom/sonymobile/home/search/SearchActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/home/HomeApplication;

    invoke-virtual {v0}, Lcom/sonymobile/home/HomeApplication;->getUserSettings()Lcom/sonymobile/home/settings/UserSettings;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/home/search/SearchActivity;->mUserSettings:Lcom/sonymobile/home/settings/UserSettings;

    .line 281
    invoke-static {p0}, Lcom/sonymobile/home/storage/StorageManager;->getGenreManager(Landroid/content/Context;)Lcom/sonymobile/home/search/suggest/PopularGenreManager;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/home/search/SearchActivity;->mGenreManager:Lcom/sonymobile/home/search/suggest/PopularGenreManager;

    .line 283
    invoke-direct {p0}, Lcom/sonymobile/home/search/SearchActivity;->initScreenOrientation()V

    .line 285
    invoke-direct {p0}, Lcom/sonymobile/home/search/SearchActivity;->setupSearchGridView()V

    .line 286
    invoke-direct {p0}, Lcom/sonymobile/home/search/SearchActivity;->setupEditText()V

    .line 287
    invoke-direct {p0}, Lcom/sonymobile/home/search/SearchActivity;->setupButtons()V

    .line 288
    invoke-direct {p0}, Lcom/sonymobile/home/search/SearchActivity;->setupContainerView()V

    .line 290
    if-nez p1, :cond_3

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/sonymobile/home/search/SearchActivity;->mIsNewInstance:Z

    .line 291
    iget-boolean v0, p0, Lcom/sonymobile/home/search/SearchActivity;->mIsNewInstance:Z

    if-nez v0, :cond_0

    .line 292
    const-string v0, "instance_state_partially_obscured"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sonymobile/home/search/SearchActivity;->mSavedIsPartiallyObscured:Z

    .line 294
    :cond_0
    invoke-direct {p0}, Lcom/sonymobile/home/search/SearchActivity;->initStatusBarVisibility()V

    .line 295
    invoke-direct {p0, p1}, Lcom/sonymobile/home/search/SearchActivity;->initConfiguration(Landroid/os/Bundle;)V

    .line 297
    const/4 v0, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/sonymobile/home/search/SearchActivity;->setResult(ILandroid/content/Intent;)V

    .line 299
    iget-object v0, p0, Lcom/sonymobile/home/search/SearchActivity;->mUserSettings:Lcom/sonymobile/home/settings/UserSettings;

    invoke-virtual {v0}, Lcom/sonymobile/home/settings/UserSettings;->isOnlineSuggestionsEnabled()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 300
    if-eqz p1, :cond_1

    .line 301
    const-string v0, "instance_state_welcome_visible"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sonymobile/home/search/SearchActivity;->mWelcomeVisible:Z

    .line 303
    :cond_1
    iget-boolean v0, p0, Lcom/sonymobile/home/search/SearchActivity;->mWelcomeVisible:Z

    if-nez v0, :cond_2

    .line 304
    invoke-direct {p0}, Lcom/sonymobile/home/search/SearchActivity;->updateWelcomeScreenStatus()V

    .line 310
    :cond_2
    :goto_1
    return-void

    :cond_3
    move v0, v1

    .line 290
    goto :goto_0

    .line 307
    :cond_4
    invoke-direct {p0}, Lcom/sonymobile/home/search/SearchActivity;->showContainer()V

    .line 308
    invoke-direct {p0}, Lcom/sonymobile/home/search/SearchActivity;->initKeyboardVisibility()V

    goto :goto_1
.end method

.method protected onDestroy()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 538
    iget-object v1, p0, Lcom/sonymobile/home/search/SearchActivity;->mSearchEditText:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/sonymobile/home/search/SearchActivity;->mEditTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 539
    iget-object v1, p0, Lcom/sonymobile/home/search/SearchActivity;->mSearchEditText:Landroid/widget/EditText;

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 541
    iget-object v1, p0, Lcom/sonymobile/home/search/SearchActivity;->mSearchGridView:Lcom/sonymobile/home/search/SearchRecyclerView;

    invoke-virtual {v1, v3}, Lcom/sonymobile/home/search/SearchRecyclerView;->setViewListener(Lcom/sonymobile/home/search/SearchRecyclerView$SearchRecyclerViewListener;)V

    .line 542
    iget-object v1, p0, Lcom/sonymobile/home/search/SearchActivity;->mSearchGridView:Lcom/sonymobile/home/search/SearchRecyclerView;

    invoke-virtual {v1}, Lcom/sonymobile/home/search/SearchRecyclerView;->clearOnScrollListeners()V

    .line 543
    iget-object v1, p0, Lcom/sonymobile/home/search/SearchActivity;->mSearchResultAdapter:Lcom/sonymobile/home/search/SearchResultAdapter;

    invoke-virtual {v1}, Lcom/sonymobile/home/search/SearchResultAdapter;->onDestroy()V

    .line 544
    iget-object v1, p0, Lcom/sonymobile/home/search/SearchActivity;->mSuggestionsAdapter:Lcom/sonymobile/home/search/SearchSuggestionsAdapter;

    invoke-virtual {v1}, Lcom/sonymobile/home/search/SearchSuggestionsAdapter;->onDestroy()V

    .line 546
    iget-object v1, p0, Lcom/sonymobile/home/search/SearchActivity;->mClearButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 548
    iget-object v1, p0, Lcom/sonymobile/home/search/SearchActivity;->mContainerView:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 549
    .local v0, "viewTreeObserver":Landroid/view/ViewTreeObserver;
    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 550
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    .line 551
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 554
    :cond_0
    iget-object v1, p0, Lcom/sonymobile/home/search/SearchActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 556
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 557
    return-void
.end method

.method public onGlobalLayout()V
    .locals 5

    .prologue
    .line 634
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 635
    .local v2, "visibleRect":Landroid/graphics/Rect;
    iget-object v3, p0, Lcom/sonymobile/home/search/SearchActivity;->mContainerView:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 637
    iget v3, v2, Landroid/graphics/Rect;->bottom:I

    iget v4, v2, Landroid/graphics/Rect;->top:I

    sub-int v1, v3, v4

    .line 638
    .local v1, "visibleHeight":I
    iget-object v3, p0, Lcom/sonymobile/home/search/SearchActivity;->mContainerView:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getRootView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v0

    .line 639
    .local v0, "totalHeight":I
    sub-int v3, v0, v1

    iget v4, p0, Lcom/sonymobile/home/search/SearchActivity;->mPartiallyObscuredThreshold:I

    if-lt v3, v4, :cond_0

    const/4 v3, 0x1

    :goto_0
    iput-boolean v3, p0, Lcom/sonymobile/home/search/SearchActivity;->mIsPartiallyObscured:Z

    .line 640
    return-void

    .line 639
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public onOnlineSuggestionsLoadStarted()V
    .locals 2

    .prologue
    .line 802
    const v0, 0x7f0f00ce

    invoke-virtual {p0, v0}, Lcom/sonymobile/home/search/SearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 803
    return-void
.end method

.method public onOnlineSuggestionsLoaded()V
    .locals 2

    .prologue
    .line 823
    const v0, 0x7f0f00ce

    invoke-virtual {p0, v0}, Lcom/sonymobile/home/search/SearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 824
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 608
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 610
    iget-object v0, p0, Lcom/sonymobile/home/search/SearchActivity;->mSuggestionsAdapter:Lcom/sonymobile/home/search/SearchSuggestionsAdapter;

    if-eqz v0, :cond_0

    .line 611
    iget-object v0, p0, Lcom/sonymobile/home/search/SearchActivity;->mSuggestionsAdapter:Lcom/sonymobile/home/search/SearchSuggestionsAdapter;

    invoke-virtual {v0}, Lcom/sonymobile/home/search/SearchSuggestionsAdapter;->unregisterForModelChanges()V

    .line 613
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonymobile/home/search/SearchActivity;->mIsEditTextWatcherEnabled:Z

    .line 614
    return-void
.end method

.method public onRequestLocation(Lcom/sonymobile/home/search/suggest/OnlineSuggestions$PermissionRequestCallback;)V
    .locals 4
    .param p1, "callback"    # Lcom/sonymobile/home/search/suggest/OnlineSuggestions$PermissionRequestCallback;

    .prologue
    .line 810
    invoke-virtual {p0}, Lcom/sonymobile/home/search/SearchActivity;->getRequestedOrientation()I

    move-result v1

    .line 811
    .local v1, "requestedOrientation":I
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/sonymobile/home/permissions/LocationConsentActivity;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 812
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "key_requested_orientation"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 813
    const-string v2, "key_show_permission_denied"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 814
    const/4 v2, 0x2

    invoke-virtual {p0, v0, v2}, Lcom/sonymobile/home/search/SearchActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 815
    iput-object p1, p0, Lcom/sonymobile/home/search/SearchActivity;->mCallback:Lcom/sonymobile/home/search/suggest/OnlineSuggestions$PermissionRequestCallback;

    .line 816
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 580
    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 582
    iget-object v1, p0, Lcom/sonymobile/home/search/SearchActivity;->mSearchEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 583
    .local v0, "text":Ljava/lang/String;
    iget-object v1, p0, Lcom/sonymobile/home/search/SearchActivity;->mSearchResultAdapter:Lcom/sonymobile/home/search/SearchResultAdapter;

    invoke-virtual {v1, v0}, Lcom/sonymobile/home/search/SearchResultAdapter;->update(Ljava/lang/String;)V

    .line 584
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    iput v1, p0, Lcom/sonymobile/home/search/SearchActivity;->mEnteredSearchTextLength:I

    .line 585
    iget v1, p0, Lcom/sonymobile/home/search/SearchActivity;->mEnteredSearchTextLength:I

    if-lez v1, :cond_0

    .line 586
    invoke-direct {p0}, Lcom/sonymobile/home/search/SearchActivity;->showSearchResults()V

    .line 590
    :goto_0
    invoke-direct {p0, v0}, Lcom/sonymobile/home/search/SearchActivity;->updateCompletionText(Ljava/lang/String;)V

    .line 591
    return-void

    .line 588
    :cond_0
    invoke-direct {p0}, Lcom/sonymobile/home/search/SearchActivity;->showSuggestions()V

    goto :goto_0
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 595
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 597
    iget-object v0, p0, Lcom/sonymobile/home/search/SearchActivity;->mSuggestionsAdapter:Lcom/sonymobile/home/search/SearchSuggestionsAdapter;

    if-eqz v0, :cond_0

    .line 598
    iget-object v0, p0, Lcom/sonymobile/home/search/SearchActivity;->mSuggestionsAdapter:Lcom/sonymobile/home/search/SearchSuggestionsAdapter;

    invoke-virtual {v0}, Lcom/sonymobile/home/search/SearchSuggestionsAdapter;->registerForModelChanges()V

    .line 599
    iget-object v0, p0, Lcom/sonymobile/home/search/SearchActivity;->mSuggestionsAdapter:Lcom/sonymobile/home/search/SearchSuggestionsAdapter;

    invoke-virtual {v0, p0}, Lcom/sonymobile/home/search/SearchSuggestionsAdapter;->updateRecommendations(Landroid/content/Context;)V

    .line 601
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonymobile/home/search/SearchActivity;->mIsEditTextWatcherEnabled:Z

    .line 603
    const-string v0, "Search"

    invoke-static {v0}, Lcom/sonymobile/home/statistics/TrackingUtil;->setScreen(Ljava/lang/String;)V

    .line 604
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 563
    iget-object v0, p0, Lcom/sonymobile/home/search/SearchActivity;->mAutoCompleteEditText:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 565
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 566
    const-string v0, "instance_state_configuration"

    iget-object v1, p0, Lcom/sonymobile/home/search/SearchActivity;->mCurrentConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 567
    const-string v0, "instance_state_partially_obscured"

    iget-boolean v1, p0, Lcom/sonymobile/home/search/SearchActivity;->mIsPartiallyObscured:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 568
    const-string v0, "instance_state_welcome_visible"

    iget-boolean v1, p0, Lcom/sonymobile/home/search/SearchActivity;->mWelcomeVisible:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 570
    iget-boolean v0, p0, Lcom/sonymobile/home/search/SearchActivity;->mShouldShowStatusBar:Z

    if-nez v0, :cond_0

    .line 572
    iget-object v0, p0, Lcom/sonymobile/home/search/SearchActivity;->mSearchEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->clearFocus()V

    .line 573
    iget-object v0, p0, Lcom/sonymobile/home/search/SearchActivity;->mSearchGridView:Lcom/sonymobile/home/search/SearchRecyclerView;

    invoke-virtual {v0}, Lcom/sonymobile/home/search/SearchRecyclerView;->requestFocus()Z

    .line 574
    invoke-direct {p0}, Lcom/sonymobile/home/search/SearchActivity;->hideKeyboard()V

    .line 576
    :cond_0
    return-void
.end method

.method public onSuggestionClick(ILandroid/view/View;)V
    .locals 1
    .param p1, "searchSuggestionId"    # I
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 644
    const-string v0, "com.sonymobile.home.search.intent.action.LAUNCH_ITEM"

    invoke-direct {p0, p1, p2, v0}, Lcom/sonymobile/home/search/SearchActivity;->handleClickEvent(ILandroid/view/View;Ljava/lang/String;)V

    .line 645
    return-void
.end method

.method public onSuggestionClick(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "urlPath"    # Ljava/lang/String;
    .param p2, "genre"    # Ljava/lang/String;

    .prologue
    .line 650
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "market://"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v1}, Lcom/sonymobile/home/search/SearchActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 655
    :goto_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 656
    invoke-direct {p0, p2}, Lcom/sonymobile/home/search/SearchActivity;->storeGenre(Ljava/lang/String;)V

    .line 658
    :cond_0
    return-void

    .line 651
    :catch_0
    move-exception v0

    .line 652
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "https://play.google.com/store/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v1}, Lcom/sonymobile/home/search/SearchActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public onTouchModeChanged(Z)V
    .locals 4
    .param p1, "isInTouchMode"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 618
    if-nez p1, :cond_0

    .line 619
    invoke-direct {p0}, Lcom/sonymobile/home/search/SearchActivity;->hideKeyboard()V

    .line 620
    iget-object v0, p0, Lcom/sonymobile/home/search/SearchActivity;->mSearchGridView:Lcom/sonymobile/home/search/SearchRecyclerView;

    invoke-virtual {v0}, Lcom/sonymobile/home/search/SearchRecyclerView;->clearFocus()V

    .line 621
    iget-object v0, p0, Lcom/sonymobile/home/search/SearchActivity;->mSearchEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 624
    :cond_0
    iget-object v3, p0, Lcom/sonymobile/home/search/SearchActivity;->mSearchResultAdapter:Lcom/sonymobile/home/search/SearchResultAdapter;

    if-nez p1, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Lcom/sonymobile/home/search/SearchResultAdapter;->enableViewSelection(Z)V

    .line 625
    iget-object v0, p0, Lcom/sonymobile/home/search/SearchActivity;->mSuggestionsAdapter:Lcom/sonymobile/home/search/SearchSuggestionsAdapter;

    if-nez p1, :cond_2

    :goto_1
    invoke-virtual {v0, v1}, Lcom/sonymobile/home/search/SearchSuggestionsAdapter;->enableViewSelection(Z)V

    .line 626
    return-void

    :cond_1
    move v0, v2

    .line 624
    goto :goto_0

    :cond_2
    move v1, v2

    .line 625
    goto :goto_1
.end method
