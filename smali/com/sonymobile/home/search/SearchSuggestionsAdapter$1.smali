.class Lcom/sonymobile/home/search/SearchSuggestionsAdapter$1;
.super Lcom/sonymobile/home/settings/UserSettings$UserSettingsListener$Adapter;
.source "SearchSuggestionsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/home/search/SearchSuggestionsAdapter;->initOnlineSuggestions(Landroid/content/Context;Lcom/sonymobile/home/search/suggest/OnlineSuggestionsStatusCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/home/search/SearchSuggestionsAdapter;


# direct methods
.method constructor <init>(Lcom/sonymobile/home/search/SearchSuggestionsAdapter;)V
    .locals 0

    .prologue
    .line 79
    iput-object p1, p0, Lcom/sonymobile/home/search/SearchSuggestionsAdapter$1;->this$0:Lcom/sonymobile/home/search/SearchSuggestionsAdapter;

    invoke-direct {p0}, Lcom/sonymobile/home/settings/UserSettings$UserSettingsListener$Adapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onOnlineSuggestionsStatusChanged(Z)V
    .locals 1
    .param p1, "onlineSuggestionsOn"    # Z

    .prologue
    .line 82
    iget-object v0, p0, Lcom/sonymobile/home/search/SearchSuggestionsAdapter$1;->this$0:Lcom/sonymobile/home/search/SearchSuggestionsAdapter;

    # getter for: Lcom/sonymobile/home/search/SearchSuggestionsAdapter;->mSuggestionsModel:Lcom/sonymobile/home/search/SearchSuggestionsModel;
    invoke-static {v0}, Lcom/sonymobile/home/search/SearchSuggestionsAdapter;->access$000(Lcom/sonymobile/home/search/SearchSuggestionsAdapter;)Lcom/sonymobile/home/search/SearchSuggestionsModel;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sonymobile/home/search/SearchSuggestionsModel;->setOnlineSuggestionsEnabled(Z)V

    .line 83
    return-void
.end method
