.class Lcom/sonymobile/home/search/SearchAdapter$SpanSizeLookup;
.super Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;
.source "SearchAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/home/search/SearchAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SpanSizeLookup"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/home/search/SearchAdapter;


# direct methods
.method private constructor <init>(Lcom/sonymobile/home/search/SearchAdapter;)V
    .locals 0

    .prologue
    .line 68
    iput-object p1, p0, Lcom/sonymobile/home/search/SearchAdapter$SpanSizeLookup;->this$0:Lcom/sonymobile/home/search/SearchAdapter;

    invoke-direct {p0}, Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonymobile/home/search/SearchAdapter;Lcom/sonymobile/home/search/SearchAdapter$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sonymobile/home/search/SearchAdapter;
    .param p2, "x1"    # Lcom/sonymobile/home/search/SearchAdapter$1;

    .prologue
    .line 68
    invoke-direct {p0, p1}, Lcom/sonymobile/home/search/SearchAdapter$SpanSizeLookup;-><init>(Lcom/sonymobile/home/search/SearchAdapter;)V

    return-void
.end method


# virtual methods
.method public getSpanSize(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 71
    iget-object v0, p0, Lcom/sonymobile/home/search/SearchAdapter$SpanSizeLookup;->this$0:Lcom/sonymobile/home/search/SearchAdapter;

    # invokes: Lcom/sonymobile/home/search/SearchAdapter;->getItemSpan(I)I
    invoke-static {v0, p1}, Lcom/sonymobile/home/search/SearchAdapter;->access$000(Lcom/sonymobile/home/search/SearchAdapter;I)I

    move-result v0

    return v0
.end method
