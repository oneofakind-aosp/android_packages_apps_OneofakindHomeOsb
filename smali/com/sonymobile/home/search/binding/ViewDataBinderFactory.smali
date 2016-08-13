.class public Lcom/sonymobile/home/search/binding/ViewDataBinderFactory;
.super Ljava/lang/Object;
.source "ViewDataBinderFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/home/search/binding/ViewDataBinderFactory$1;
    }
.end annotation


# instance fields
.field private final mDownloader:Lcom/sonymobile/home/search/SelfUpdatingIconBitmapCache;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sonymobile/home/search/SelfUpdatingIconBitmapCache$DownloadListener;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Lcom/sonymobile/home/search/SelfUpdatingIconBitmapCache$DownloadListener;

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Lcom/sonymobile/home/search/SelfUpdatingIconBitmapCache;

    invoke-direct {v0, p1, p2}, Lcom/sonymobile/home/search/SelfUpdatingIconBitmapCache;-><init>(Landroid/content/Context;Lcom/sonymobile/home/search/SelfUpdatingIconBitmapCache$DownloadListener;)V

    iput-object v0, p0, Lcom/sonymobile/home/search/binding/ViewDataBinderFactory;->mDownloader:Lcom/sonymobile/home/search/SelfUpdatingIconBitmapCache;

    .line 30
    return-void
.end method

.method private createGooglePlayButtonHolder(Landroid/view/ViewGroup;Lcom/sonymobile/home/search/SearchAdapter$SearchSuggestionEventListener;Lcom/sonymobile/home/settings/UserSettings;)Lcom/sonymobile/home/search/binding/SearchViewDataBinder;
    .locals 4
    .param p1, "viewGroup"    # Landroid/view/ViewGroup;
    .param p2, "listener"    # Lcom/sonymobile/home/search/SearchAdapter$SearchSuggestionEventListener;
    .param p3, "userSettings"    # Lcom/sonymobile/home/settings/UserSettings;

    .prologue
    .line 93
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f030026

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 96
    .local v0, "view":Landroid/view/View;
    new-instance v1, Lcom/sonymobile/home/search/binding/GooglePlayDataBinder;

    invoke-direct {v1, v0, p2, p3}, Lcom/sonymobile/home/search/binding/GooglePlayDataBinder;-><init>(Landroid/view/View;Lcom/sonymobile/home/search/SearchAdapter$SearchSuggestionEventListener;Lcom/sonymobile/home/settings/UserSettings;)V

    return-object v1
.end method

.method private createHeadingViewHolder(Landroid/view/ViewGroup;)Lcom/sonymobile/home/search/binding/SearchViewDataBinder;
    .locals 4
    .param p1, "viewGroup"    # Landroid/view/ViewGroup;

    .prologue
    .line 58
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f030037

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 60
    .local v0, "view":Landroid/view/View;
    new-instance v1, Lcom/sonymobile/home/search/binding/HeadingViewDataBinder;

    invoke-direct {v1, v0}, Lcom/sonymobile/home/search/binding/HeadingViewDataBinder;-><init>(Landroid/view/View;)V

    return-object v1
.end method

.method private createOnlineSearchViewHolder(Landroid/view/ViewGroup;Lcom/sonymobile/home/search/SearchAdapter$SearchSuggestionEventListener;Lcom/sonymobile/home/search/SelfUpdatingIconBitmapCache;Lcom/sonymobile/home/settings/UserSettings;)Lcom/sonymobile/home/search/binding/SearchViewDataBinder;
    .locals 4
    .param p1, "viewGroup"    # Landroid/view/ViewGroup;
    .param p2, "listener"    # Lcom/sonymobile/home/search/SearchAdapter$SearchSuggestionEventListener;
    .param p3, "downloader"    # Lcom/sonymobile/home/search/SelfUpdatingIconBitmapCache;
    .param p4, "userSettings"    # Lcom/sonymobile/home/settings/UserSettings;

    .prologue
    .line 68
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f030034

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 71
    .local v0, "view":Landroid/view/View;
    new-instance v1, Lcom/sonymobile/home/search/suggest/SuggestionEntryViewDataBinder;

    invoke-direct {v1, v0, p2, p3, p4}, Lcom/sonymobile/home/search/suggest/SuggestionEntryViewDataBinder;-><init>(Landroid/view/View;Lcom/sonymobile/home/search/SearchAdapter$SearchSuggestionEventListener;Lcom/sonymobile/home/search/SelfUpdatingIconBitmapCache;Lcom/sonymobile/home/settings/UserSettings;)V

    return-object v1
.end method

.method private createSuggestionViewHolder(Landroid/view/ViewGroup;Lcom/sonymobile/home/search/SearchAdapter$SearchSuggestionEventListener;)Lcom/sonymobile/home/search/binding/SearchViewDataBinder;
    .locals 4
    .param p1, "viewGroup"    # Landroid/view/ViewGroup;
    .param p2, "listener"    # Lcom/sonymobile/home/search/SearchAdapter$SearchSuggestionEventListener;

    .prologue
    .line 77
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f03002b

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 79
    .local v0, "view":Landroid/view/View;
    new-instance v1, Lcom/sonymobile/home/search/binding/LocalSearchEntryViewDataBinder;

    invoke-direct {v1, v0, p2}, Lcom/sonymobile/home/search/binding/LocalSearchEntryViewDataBinder;-><init>(Landroid/view/View;Lcom/sonymobile/home/search/SearchAdapter$SearchSuggestionEventListener;)V

    return-object v1
.end method


# virtual methods
.method public cancelIconDownloads()V
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/sonymobile/home/search/binding/ViewDataBinderFactory;->mDownloader:Lcom/sonymobile/home/search/SelfUpdatingIconBitmapCache;

    invoke-virtual {v0}, Lcom/sonymobile/home/search/SelfUpdatingIconBitmapCache;->cancel()V

    .line 84
    return-void
.end method

.method public cleanUp()V
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/sonymobile/home/search/binding/ViewDataBinderFactory;->mDownloader:Lcom/sonymobile/home/search/SelfUpdatingIconBitmapCache;

    invoke-virtual {v0}, Lcom/sonymobile/home/search/SelfUpdatingIconBitmapCache;->cleanUp()V

    .line 88
    return-void
.end method

.method public createViewHolder(Landroid/view/ViewGroup;Lcom/sonymobile/home/search/entry/SearchEntry$Type;Lcom/sonymobile/home/search/SearchAdapter$SearchSuggestionEventListener;Lcom/sonymobile/home/settings/UserSettings;)Lcom/sonymobile/home/search/binding/SearchViewDataBinder;
    .locals 4
    .param p1, "viewGroup"    # Landroid/view/ViewGroup;
    .param p2, "type"    # Lcom/sonymobile/home/search/entry/SearchEntry$Type;
    .param p3, "listener"    # Lcom/sonymobile/home/search/SearchAdapter$SearchSuggestionEventListener;
    .param p4, "userSettings"    # Lcom/sonymobile/home/settings/UserSettings;

    .prologue
    .line 35
    sget-object v1, Lcom/sonymobile/home/search/binding/ViewDataBinderFactory$1;->$SwitchMap$com$sonymobile$home$search$entry$SearchEntry$Type:[I

    invoke-virtual {p2}, Lcom/sonymobile/home/search/entry/SearchEntry$Type;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 51
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Lcom/sonymobile/home/search/entry/SearchEntry$Type;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 37
    :pswitch_0
    invoke-direct {p0, p1, p3}, Lcom/sonymobile/home/search/binding/ViewDataBinderFactory;->createSuggestionViewHolder(Landroid/view/ViewGroup;Lcom/sonymobile/home/search/SearchAdapter$SearchSuggestionEventListener;)Lcom/sonymobile/home/search/binding/SearchViewDataBinder;

    move-result-object v0

    .line 53
    .local v0, "holder":Lcom/sonymobile/home/search/binding/SearchViewDataBinder;
    :goto_0
    return-object v0

    .line 41
    .end local v0    # "holder":Lcom/sonymobile/home/search/binding/SearchViewDataBinder;
    :pswitch_1
    iget-object v1, p0, Lcom/sonymobile/home/search/binding/ViewDataBinderFactory;->mDownloader:Lcom/sonymobile/home/search/SelfUpdatingIconBitmapCache;

    invoke-direct {p0, p1, p3, v1, p4}, Lcom/sonymobile/home/search/binding/ViewDataBinderFactory;->createOnlineSearchViewHolder(Landroid/view/ViewGroup;Lcom/sonymobile/home/search/SearchAdapter$SearchSuggestionEventListener;Lcom/sonymobile/home/search/SelfUpdatingIconBitmapCache;Lcom/sonymobile/home/settings/UserSettings;)Lcom/sonymobile/home/search/binding/SearchViewDataBinder;

    move-result-object v0

    .line 42
    .restart local v0    # "holder":Lcom/sonymobile/home/search/binding/SearchViewDataBinder;
    goto :goto_0

    .line 45
    .end local v0    # "holder":Lcom/sonymobile/home/search/binding/SearchViewDataBinder;
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/sonymobile/home/search/binding/ViewDataBinderFactory;->createHeadingViewHolder(Landroid/view/ViewGroup;)Lcom/sonymobile/home/search/binding/SearchViewDataBinder;

    move-result-object v0

    .line 46
    .restart local v0    # "holder":Lcom/sonymobile/home/search/binding/SearchViewDataBinder;
    goto :goto_0

    .line 48
    .end local v0    # "holder":Lcom/sonymobile/home/search/binding/SearchViewDataBinder;
    :pswitch_3
    invoke-direct {p0, p1, p3, p4}, Lcom/sonymobile/home/search/binding/ViewDataBinderFactory;->createGooglePlayButtonHolder(Landroid/view/ViewGroup;Lcom/sonymobile/home/search/SearchAdapter$SearchSuggestionEventListener;Lcom/sonymobile/home/settings/UserSettings;)Lcom/sonymobile/home/search/binding/SearchViewDataBinder;

    move-result-object v0

    .line 49
    .restart local v0    # "holder":Lcom/sonymobile/home/search/binding/SearchViewDataBinder;
    goto :goto_0

    .line 35
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
