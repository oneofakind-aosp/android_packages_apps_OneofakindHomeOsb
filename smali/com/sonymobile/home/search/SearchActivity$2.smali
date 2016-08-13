.class Lcom/sonymobile/home/search/SearchActivity$2;
.super Ljava/lang/Object;
.source "SearchActivity.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


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
    .line 201
    iput-object p1, p0, Lcom/sonymobile/home/search/SearchActivity$2;->this$0:Lcom/sonymobile/home/search/SearchActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 4
    .param p1, "textView"    # Landroid/widget/TextView;
    .param p2, "actionId"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 205
    iget-object v2, p0, Lcom/sonymobile/home/search/SearchActivity$2;->this$0:Lcom/sonymobile/home/search/SearchActivity;

    # invokes: Lcom/sonymobile/home/search/SearchActivity;->getCurrentSearchAdapter()Lcom/sonymobile/home/search/SearchAdapter;
    invoke-static {v2}, Lcom/sonymobile/home/search/SearchActivity;->access$700(Lcom/sonymobile/home/search/SearchActivity;)Lcom/sonymobile/home/search/SearchAdapter;

    move-result-object v1

    .line 206
    .local v1, "searchAdapter":Lcom/sonymobile/home/search/SearchAdapter;
    invoke-virtual {v1}, Lcom/sonymobile/home/search/SearchAdapter;->getFirstSearchSuggestionId()I

    move-result v0

    .line 207
    .local v0, "id":I
    const/high16 v2, -0x80000000

    if-eq v0, v2, :cond_1

    .line 208
    iget-object v2, p0, Lcom/sonymobile/home/search/SearchActivity$2;->this$0:Lcom/sonymobile/home/search/SearchActivity;

    const-string v3, "com.sonymobile.home.search.intent.action.LAUNCH_ITEM"

    # invokes: Lcom/sonymobile/home/search/SearchActivity;->postClickEvent(ILjava/lang/String;)V
    invoke-static {v2, v0, v3}, Lcom/sonymobile/home/search/SearchActivity;->access$800(Lcom/sonymobile/home/search/SearchActivity;ILjava/lang/String;)V

    .line 212
    .end local v1    # "searchAdapter":Lcom/sonymobile/home/search/SearchAdapter;
    :cond_0
    :goto_0
    const/4 v2, 0x1

    return v2

    .line 209
    .restart local v1    # "searchAdapter":Lcom/sonymobile/home/search/SearchAdapter;
    :cond_1
    instance-of v2, v1, Lcom/sonymobile/home/search/SearchResultAdapter;

    if-eqz v2, :cond_0

    .line 210
    iget-object v2, p0, Lcom/sonymobile/home/search/SearchActivity$2;->this$0:Lcom/sonymobile/home/search/SearchActivity;

    check-cast v1, Lcom/sonymobile/home/search/SearchResultAdapter;

    .end local v1    # "searchAdapter":Lcom/sonymobile/home/search/SearchAdapter;
    # invokes: Lcom/sonymobile/home/search/SearchActivity;->handleSearchOnGooglePlay(Lcom/sonymobile/home/search/SearchResultAdapter;)V
    invoke-static {v2, v1}, Lcom/sonymobile/home/search/SearchActivity;->access$900(Lcom/sonymobile/home/search/SearchActivity;Lcom/sonymobile/home/search/SearchResultAdapter;)V

    goto :goto_0
.end method
