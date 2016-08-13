.class Lcom/sonymobile/home/search/SearchActivity$5;
.super Landroid/support/v7/widget/RecyclerView$OnScrollListener;
.source "SearchActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/home/search/SearchActivity;->setupSearchGridView()V
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
    .line 336
    iput-object p1, p0, Lcom/sonymobile/home/search/SearchActivity$5;->this$0:Lcom/sonymobile/home/search/SearchActivity;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroid/support/v7/widget/RecyclerView;I)V
    .locals 1
    .param p1, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;
    .param p2, "newState"    # I

    .prologue
    .line 339
    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 340
    iget-object v0, p0, Lcom/sonymobile/home/search/SearchActivity$5;->this$0:Lcom/sonymobile/home/search/SearchActivity;

    # invokes: Lcom/sonymobile/home/search/SearchActivity;->hideKeyboard()V
    invoke-static {v0}, Lcom/sonymobile/home/search/SearchActivity;->access$1200(Lcom/sonymobile/home/search/SearchActivity;)V

    .line 341
    iget-object v0, p0, Lcom/sonymobile/home/search/SearchActivity$5;->this$0:Lcom/sonymobile/home/search/SearchActivity;

    # getter for: Lcom/sonymobile/home/search/SearchActivity;->mSearchEditText:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/sonymobile/home/search/SearchActivity;->access$1300(Lcom/sonymobile/home/search/SearchActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->clearFocus()V

    .line 342
    iget-object v0, p0, Lcom/sonymobile/home/search/SearchActivity$5;->this$0:Lcom/sonymobile/home/search/SearchActivity;

    # getter for: Lcom/sonymobile/home/search/SearchActivity;->mSearchGridView:Lcom/sonymobile/home/search/SearchRecyclerView;
    invoke-static {v0}, Lcom/sonymobile/home/search/SearchActivity;->access$1100(Lcom/sonymobile/home/search/SearchActivity;)Lcom/sonymobile/home/search/SearchRecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/home/search/SearchRecyclerView;->requestFocus()Z

    .line 344
    :cond_0
    return-void
.end method
