.class Lcom/sonymobile/home/search/SearchActivity$3;
.super Ljava/lang/Object;
.source "SearchActivity.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/home/search/SearchActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/home/search/SearchActivity;


# direct methods
.method constructor <init>(Lcom/sonymobile/home/search/SearchActivity;)V
    .locals 0

    .prologue
    .line 226
    iput-object p1, p0, Lcom/sonymobile/home/search/SearchActivity$3;->this$0:Lcom/sonymobile/home/search/SearchActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 5
    .param p1, "view"    # Landroid/view/View;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 230
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-eqz v3, :cond_1

    .line 231
    const/4 v0, 0x0

    .line 247
    :cond_0
    :goto_0
    return v0

    .line 234
    :cond_1
    iget-object v3, p0, Lcom/sonymobile/home/search/SearchActivity$3;->this$0:Lcom/sonymobile/home/search/SearchActivity;

    # invokes: Lcom/sonymobile/home/search/SearchActivity;->getCurrentSearchAdapter()Lcom/sonymobile/home/search/SearchAdapter;
    invoke-static {v3}, Lcom/sonymobile/home/search/SearchActivity;->access$700(Lcom/sonymobile/home/search/SearchActivity;)Lcom/sonymobile/home/search/SearchAdapter;

    move-result-object v2

    .line 235
    .local v2, "searchAdapter":Lcom/sonymobile/home/search/SearchAdapter;
    const/4 v0, 0x0

    .line 236
    .local v0, "handled":Z
    const/16 v3, 0x17

    if-eq p2, v3, :cond_2

    const/16 v3, 0x42

    if-ne p2, v3, :cond_0

    .line 237
    :cond_2
    invoke-virtual {v2}, Lcom/sonymobile/home/search/SearchAdapter;->getFirstSearchSuggestionId()I

    move-result v1

    .line 238
    .local v1, "id":I
    const/high16 v3, -0x80000000

    if-eq v1, v3, :cond_3

    .line 239
    iget-object v3, p0, Lcom/sonymobile/home/search/SearchActivity$3;->this$0:Lcom/sonymobile/home/search/SearchActivity;

    const-string v4, "com.sonymobile.home.search.intent.action.LAUNCH_ITEM"

    # invokes: Lcom/sonymobile/home/search/SearchActivity;->handleClickEvent(ILjava/lang/String;)V
    invoke-static {v3, v1, v4}, Lcom/sonymobile/home/search/SearchActivity;->access$1000(Lcom/sonymobile/home/search/SearchActivity;ILjava/lang/String;)V

    .line 240
    const/4 v0, 0x1

    goto :goto_0

    .line 241
    :cond_3
    instance-of v3, v2, Lcom/sonymobile/home/search/SearchResultAdapter;

    if-eqz v3, :cond_0

    .line 242
    iget-object v3, p0, Lcom/sonymobile/home/search/SearchActivity$3;->this$0:Lcom/sonymobile/home/search/SearchActivity;

    check-cast v2, Lcom/sonymobile/home/search/SearchResultAdapter;

    .end local v2    # "searchAdapter":Lcom/sonymobile/home/search/SearchAdapter;
    # invokes: Lcom/sonymobile/home/search/SearchActivity;->handleSearchOnGooglePlay(Lcom/sonymobile/home/search/SearchResultAdapter;)V
    invoke-static {v3, v2}, Lcom/sonymobile/home/search/SearchActivity;->access$900(Lcom/sonymobile/home/search/SearchActivity;Lcom/sonymobile/home/search/SearchResultAdapter;)V

    .line 243
    const/4 v0, 0x1

    goto :goto_0
.end method
