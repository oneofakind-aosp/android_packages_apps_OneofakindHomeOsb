.class Lcom/sonymobile/home/search/SearchActivity$6;
.super Ljava/lang/Object;
.source "SearchActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/home/search/SearchActivity;->setupButtons()V
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
    .line 359
    iput-object p1, p0, Lcom/sonymobile/home/search/SearchActivity$6;->this$0:Lcom/sonymobile/home/search/SearchActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 362
    iget-object v0, p0, Lcom/sonymobile/home/search/SearchActivity$6;->this$0:Lcom/sonymobile/home/search/SearchActivity;

    # getter for: Lcom/sonymobile/home/search/SearchActivity;->mSearchEditText:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/sonymobile/home/search/SearchActivity;->access$1300(Lcom/sonymobile/home/search/SearchActivity;)Landroid/widget/EditText;

    move-result-object v0

    const-string v1, ""

    sget-object v2, Landroid/widget/TextView$BufferType;->EDITABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {v0, v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 363
    iget-object v0, p0, Lcom/sonymobile/home/search/SearchActivity$6;->this$0:Lcom/sonymobile/home/search/SearchActivity;

    # getter for: Lcom/sonymobile/home/search/SearchActivity;->mAutoCompleteEditText:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/sonymobile/home/search/SearchActivity;->access$100(Lcom/sonymobile/home/search/SearchActivity;)Landroid/widget/EditText;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 364
    iget-object v0, p0, Lcom/sonymobile/home/search/SearchActivity$6;->this$0:Lcom/sonymobile/home/search/SearchActivity;

    # getter for: Lcom/sonymobile/home/search/SearchActivity;->mSearchGridView:Lcom/sonymobile/home/search/SearchRecyclerView;
    invoke-static {v0}, Lcom/sonymobile/home/search/SearchActivity;->access$1100(Lcom/sonymobile/home/search/SearchActivity;)Lcom/sonymobile/home/search/SearchRecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/home/search/SearchRecyclerView;->clearFocus()V

    .line 365
    iget-object v0, p0, Lcom/sonymobile/home/search/SearchActivity$6;->this$0:Lcom/sonymobile/home/search/SearchActivity;

    # getter for: Lcom/sonymobile/home/search/SearchActivity;->mSearchEditText:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/sonymobile/home/search/SearchActivity;->access$1300(Lcom/sonymobile/home/search/SearchActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 366
    return-void
.end method
