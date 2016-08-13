.class Lcom/sonymobile/home/apptray/AppTrayPresenter$AppTrayTransferable;
.super Lcom/sonymobile/home/ui/pageview/PageItemViewTransferable;
.source "AppTrayPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/home/apptray/AppTrayPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AppTrayTransferable"
.end annotation


# direct methods
.method public constructor <init>(Lcom/sonymobile/home/ui/pageview/PageItemView;)V
    .locals 0
    .param p1, "pageItemView"    # Lcom/sonymobile/home/ui/pageview/PageItemView;

    .prologue
    .line 1170
    invoke-direct {p0, p1}, Lcom/sonymobile/home/ui/pageview/PageItemViewTransferable;-><init>(Lcom/sonymobile/home/ui/pageview/PageItemView;)V

    .line 1171
    return-void
.end method


# virtual methods
.method public getColSpan()I
    .locals 1

    .prologue
    .line 1180
    const/4 v0, 0x1

    return v0
.end method

.method public getRowSpan()I
    .locals 1

    .prologue
    .line 1175
    const/4 v0, 0x1

    return v0
.end method
