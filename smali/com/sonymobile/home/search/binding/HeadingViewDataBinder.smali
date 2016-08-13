.class public Lcom/sonymobile/home/search/binding/HeadingViewDataBinder;
.super Lcom/sonymobile/home/search/binding/SearchViewDataBinder;
.source "HeadingViewDataBinder.java"


# instance fields
.field private final mSubtitle:Landroid/widget/TextView;

.field private final mTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/sonymobile/home/search/binding/SearchViewDataBinder;-><init>(Landroid/view/View;)V

    .line 26
    const v0, 0x7f0f00cf

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sonymobile/home/search/binding/HeadingViewDataBinder;->mTitle:Landroid/widget/TextView;

    .line 27
    const v0, 0x7f0f00d0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sonymobile/home/search/binding/HeadingViewDataBinder;->mSubtitle:Landroid/widget/TextView;

    .line 28
    return-void
.end method


# virtual methods
.method public bind(Lcom/sonymobile/home/search/entry/SearchEntry;)V
    .locals 4
    .param p1, "searchEntry"    # Lcom/sonymobile/home/search/entry/SearchEntry;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 32
    const-class v2, Lcom/sonymobile/home/search/entry/HeadingEntry;

    invoke-virtual {p0, p1, v2}, Lcom/sonymobile/home/search/binding/HeadingViewDataBinder;->checkSearchEntryTypeAndThrow(Lcom/sonymobile/home/search/entry/SearchEntry;Ljava/lang/Class;)V

    move-object v0, p1

    .line 33
    check-cast v0, Lcom/sonymobile/home/search/entry/HeadingEntry;

    .line 34
    .local v0, "entry":Lcom/sonymobile/home/search/entry/HeadingEntry;
    iget-object v2, p0, Lcom/sonymobile/home/search/binding/HeadingViewDataBinder;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/sonymobile/home/search/entry/HeadingEntry;->getLabel()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 35
    invoke-virtual {v0}, Lcom/sonymobile/home/search/entry/HeadingEntry;->getSubtitle()Ljava/lang/String;

    move-result-object v1

    .line 37
    .local v1, "subtitle":Ljava/lang/String;
    invoke-virtual {v0}, Lcom/sonymobile/home/search/entry/HeadingEntry;->shouldShowSubtitle()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 38
    iget-object v2, p0, Lcom/sonymobile/home/search/binding/HeadingViewDataBinder;->mSubtitle:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 39
    iget-object v2, p0, Lcom/sonymobile/home/search/binding/HeadingViewDataBinder;->mSubtitle:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 43
    :goto_0
    return-void

    .line 41
    :cond_0
    iget-object v2, p0, Lcom/sonymobile/home/search/binding/HeadingViewDataBinder;->mSubtitle:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method
