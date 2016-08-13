.class public Lcom/sonymobile/home/search/entry/HeadingEntry;
.super Lcom/sonymobile/home/search/entry/SearchEntry;
.source "HeadingEntry.java"


# instance fields
.field private mShowSubtitle:Z

.field private final mSubtitle:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/sonymobile/home/search/entry/SearchEntry$Type;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .param p1, "type"    # Lcom/sonymobile/home/search/entry/SearchEntry$Type;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "subtitle"    # Ljava/lang/String;
    .param p4, "showSubtitle"    # Z

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Lcom/sonymobile/home/search/entry/SearchEntry;-><init>(Lcom/sonymobile/home/search/entry/SearchEntry$Type;Ljava/lang/String;)V

    .line 27
    iput-object p3, p0, Lcom/sonymobile/home/search/entry/HeadingEntry;->mSubtitle:Ljava/lang/String;

    .line 28
    iput-boolean p4, p0, Lcom/sonymobile/home/search/entry/HeadingEntry;->mShowSubtitle:Z

    .line 29
    return-void
.end method


# virtual methods
.method public getSubtitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/sonymobile/home/search/entry/HeadingEntry;->mSubtitle:Ljava/lang/String;

    return-object v0
.end method

.method public isSelectable()Z
    .locals 1

    .prologue
    .line 72
    const/4 v0, 0x0

    return v0
.end method

.method public shouldShowSubtitle()Z
    .locals 1

    .prologue
    .line 64
    iget-boolean v0, p0, Lcom/sonymobile/home/search/entry/HeadingEntry;->mShowSubtitle:Z

    return v0
.end method

.method public showSubtitle(Z)V
    .locals 0
    .param p1, "show"    # Z

    .prologue
    .line 55
    iput-boolean p1, p0, Lcom/sonymobile/home/search/entry/HeadingEntry;->mShowSubtitle:Z

    .line 56
    return-void
.end method
