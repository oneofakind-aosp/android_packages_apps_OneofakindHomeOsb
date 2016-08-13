.class public Lcom/sonymobile/home/search/binding/LocalSearchEntryViewDataBinder;
.super Lcom/sonymobile/home/search/binding/SearchViewDataBinder;
.source "LocalSearchEntryViewDataBinder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private mId:I

.field private final mListener:Lcom/sonymobile/home/search/SearchAdapter$SearchSuggestionEventListener;


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/sonymobile/home/search/SearchAdapter$SearchSuggestionEventListener;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "listener"    # Lcom/sonymobile/home/search/SearchAdapter$SearchSuggestionEventListener;

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/sonymobile/home/search/binding/SearchViewDataBinder;-><init>(Landroid/view/View;)V

    .line 24
    const/high16 v0, -0x80000000

    iput v0, p0, Lcom/sonymobile/home/search/binding/LocalSearchEntryViewDataBinder;->mId:I

    .line 37
    iput-object p2, p0, Lcom/sonymobile/home/search/binding/LocalSearchEntryViewDataBinder;->mListener:Lcom/sonymobile/home/search/SearchAdapter$SearchSuggestionEventListener;

    .line 38
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 39
    return-void
.end method


# virtual methods
.method public bind(Lcom/sonymobile/home/search/entry/SearchEntry;)V
    .locals 6
    .param p1, "entry"    # Lcom/sonymobile/home/search/entry/SearchEntry;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 51
    const-class v4, Lcom/sonymobile/home/search/entry/LocalSearchEntry;

    invoke-virtual {p0, p1, v4}, Lcom/sonymobile/home/search/binding/LocalSearchEntryViewDataBinder;->checkSearchEntryTypeAndThrow(Lcom/sonymobile/home/search/entry/SearchEntry;Ljava/lang/Class;)V

    move-object v2, p1

    .line 52
    check-cast v2, Lcom/sonymobile/home/search/entry/LocalSearchEntry;

    .line 54
    .local v2, "searchEntry":Lcom/sonymobile/home/search/entry/LocalSearchEntry;
    invoke-virtual {p1}, Lcom/sonymobile/home/search/entry/SearchEntry;->getLabel()Ljava/lang/String;

    move-result-object v1

    .line 55
    .local v1, "label":Ljava/lang/String;
    iget-object v3, p0, Lcom/sonymobile/home/search/binding/LocalSearchEntryViewDataBinder;->itemView:Landroid/view/View;

    check-cast v3, Landroid/widget/TextView;

    .line 56
    .local v3, "titleTextView":Landroid/widget/TextView;
    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 58
    invoke-virtual {v2}, Lcom/sonymobile/home/search/entry/LocalSearchEntry;->getSuggestionId()I

    move-result v4

    iput v4, p0, Lcom/sonymobile/home/search/binding/LocalSearchEntryViewDataBinder;->mId:I

    .line 60
    invoke-virtual {v2}, Lcom/sonymobile/home/search/entry/LocalSearchEntry;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 61
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v3, v5, v0, v5, v5}, Landroid/widget/TextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 62
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/sonymobile/home/search/binding/LocalSearchEntryViewDataBinder;->mListener:Lcom/sonymobile/home/search/SearchAdapter$SearchSuggestionEventListener;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/sonymobile/home/search/binding/LocalSearchEntryViewDataBinder;->mId:I

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_0

    move-object v0, p1

    .line 44
    check-cast v0, Lcom/sonymobile/home/search/LocalSearchItemView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sonymobile/home/search/LocalSearchItemView;->setStayPressed(Z)V

    .line 45
    iget-object v0, p0, Lcom/sonymobile/home/search/binding/LocalSearchEntryViewDataBinder;->mListener:Lcom/sonymobile/home/search/SearchAdapter$SearchSuggestionEventListener;

    iget v1, p0, Lcom/sonymobile/home/search/binding/LocalSearchEntryViewDataBinder;->mId:I

    invoke-interface {v0, v1, p1}, Lcom/sonymobile/home/search/SearchAdapter$SearchSuggestionEventListener;->onSuggestionClick(ILandroid/view/View;)V

    .line 47
    :cond_0
    return-void
.end method
