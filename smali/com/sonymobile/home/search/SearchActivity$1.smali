.class Lcom/sonymobile/home/search/SearchActivity$1;
.super Ljava/lang/Object;
.source "SearchActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


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
    .line 143
    iput-object p1, p0, Lcom/sonymobile/home/search/SearchActivity$1;->this$0:Lcom/sonymobile/home/search/SearchActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 3
    .param p1, "editable"    # Landroid/text/Editable;

    .prologue
    .line 160
    iget-object v2, p0, Lcom/sonymobile/home/search/SearchActivity$1;->this$0:Lcom/sonymobile/home/search/SearchActivity;

    # getter for: Lcom/sonymobile/home/search/SearchActivity;->mIsEditTextWatcherEnabled:Z
    invoke-static {v2}, Lcom/sonymobile/home/search/SearchActivity;->access$000(Lcom/sonymobile/home/search/SearchActivity;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 174
    :goto_0
    return-void

    .line 163
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 164
    .local v0, "searchText":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    .line 165
    .local v1, "searchTextLength":I
    iget-object v2, p0, Lcom/sonymobile/home/search/SearchActivity$1;->this$0:Lcom/sonymobile/home/search/SearchActivity;

    # getter for: Lcom/sonymobile/home/search/SearchActivity;->mEnteredSearchTextLength:I
    invoke-static {v2}, Lcom/sonymobile/home/search/SearchActivity;->access$200(Lcom/sonymobile/home/search/SearchActivity;)I

    move-result v2

    if-lez v2, :cond_2

    if-nez v1, :cond_2

    .line 166
    iget-object v2, p0, Lcom/sonymobile/home/search/SearchActivity$1;->this$0:Lcom/sonymobile/home/search/SearchActivity;

    # invokes: Lcom/sonymobile/home/search/SearchActivity;->showSuggestions()V
    invoke-static {v2}, Lcom/sonymobile/home/search/SearchActivity;->access$300(Lcom/sonymobile/home/search/SearchActivity;)V

    .line 171
    :cond_1
    :goto_1
    iget-object v2, p0, Lcom/sonymobile/home/search/SearchActivity$1;->this$0:Lcom/sonymobile/home/search/SearchActivity;

    # setter for: Lcom/sonymobile/home/search/SearchActivity;->mEnteredSearchTextLength:I
    invoke-static {v2, v1}, Lcom/sonymobile/home/search/SearchActivity;->access$202(Lcom/sonymobile/home/search/SearchActivity;I)I

    .line 172
    iget-object v2, p0, Lcom/sonymobile/home/search/SearchActivity$1;->this$0:Lcom/sonymobile/home/search/SearchActivity;

    # getter for: Lcom/sonymobile/home/search/SearchActivity;->mSearchResultAdapter:Lcom/sonymobile/home/search/SearchResultAdapter;
    invoke-static {v2}, Lcom/sonymobile/home/search/SearchActivity;->access$500(Lcom/sonymobile/home/search/SearchActivity;)Lcom/sonymobile/home/search/SearchResultAdapter;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/sonymobile/home/search/SearchResultAdapter;->update(Ljava/lang/String;)V

    .line 173
    iget-object v2, p0, Lcom/sonymobile/home/search/SearchActivity$1;->this$0:Lcom/sonymobile/home/search/SearchActivity;

    # invokes: Lcom/sonymobile/home/search/SearchActivity;->updateCompletionText(Ljava/lang/String;)V
    invoke-static {v2, v0}, Lcom/sonymobile/home/search/SearchActivity;->access$600(Lcom/sonymobile/home/search/SearchActivity;Ljava/lang/String;)V

    goto :goto_0

    .line 167
    :cond_2
    iget-object v2, p0, Lcom/sonymobile/home/search/SearchActivity$1;->this$0:Lcom/sonymobile/home/search/SearchActivity;

    # getter for: Lcom/sonymobile/home/search/SearchActivity;->mEnteredSearchTextLength:I
    invoke-static {v2}, Lcom/sonymobile/home/search/SearchActivity;->access$200(Lcom/sonymobile/home/search/SearchActivity;)I

    move-result v2

    if-nez v2, :cond_1

    if-lez v1, :cond_1

    .line 168
    iget-object v2, p0, Lcom/sonymobile/home/search/SearchActivity$1;->this$0:Lcom/sonymobile/home/search/SearchActivity;

    # invokes: Lcom/sonymobile/home/search/SearchActivity;->showSearchResults()V
    invoke-static {v2}, Lcom/sonymobile/home/search/SearchActivity;->access$400(Lcom/sonymobile/home/search/SearchActivity;)V

    goto :goto_1
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 147
    iget-object v0, p0, Lcom/sonymobile/home/search/SearchActivity$1;->this$0:Lcom/sonymobile/home/search/SearchActivity;

    # getter for: Lcom/sonymobile/home/search/SearchActivity;->mIsEditTextWatcherEnabled:Z
    invoke-static {v0}, Lcom/sonymobile/home/search/SearchActivity;->access$000(Lcom/sonymobile/home/search/SearchActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 152
    :goto_0
    return-void

    .line 151
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/home/search/SearchActivity$1;->this$0:Lcom/sonymobile/home/search/SearchActivity;

    # getter for: Lcom/sonymobile/home/search/SearchActivity;->mAutoCompleteEditText:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/sonymobile/home/search/SearchActivity;->access$100(Lcom/sonymobile/home/search/SearchActivity;)Landroid/widget/EditText;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 156
    return-void
.end method
