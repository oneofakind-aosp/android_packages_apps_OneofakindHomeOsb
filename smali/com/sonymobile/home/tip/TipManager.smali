.class public final Lcom/sonymobile/home/tip/TipManager;
.super Ljava/lang/Object;
.source "TipManager.java"


# static fields
.field private static final sInstance:Lcom/sonymobile/home/tip/TipManager;


# instance fields
.field private final mTipItems:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/sonymobile/home/data/TipItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    new-instance v0, Lcom/sonymobile/home/tip/TipManager;

    invoke-direct {v0}, Lcom/sonymobile/home/tip/TipManager;-><init>()V

    sput-object v0, Lcom/sonymobile/home/tip/TipManager;->sInstance:Lcom/sonymobile/home/tip/TipManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/home/tip/TipManager;->mTipItems:Landroid/util/SparseArray;

    .line 32
    return-void
.end method

.method public static getInstance()Lcom/sonymobile/home/tip/TipManager;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lcom/sonymobile/home/tip/TipManager;->sInstance:Lcom/sonymobile/home/tip/TipManager;

    return-object v0
.end method


# virtual methods
.method public getTipItem(I)Lcom/sonymobile/home/data/TipItem;
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 76
    iget-object v0, p0, Lcom/sonymobile/home/tip/TipManager;->mTipItems:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/home/data/TipItem;

    return-object v0
.end method

.method public registerTipItem(ILcom/sonymobile/home/data/TipItem;)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "tipItem"    # Lcom/sonymobile/home/data/TipItem;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/sonymobile/home/tip/TipManager;->mTipItems:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 46
    return-void
.end method

.method public unregisterTipItem(Lcom/sonymobile/home/data/TipItem;)V
    .locals 2
    .param p1, "tipItem"    # Lcom/sonymobile/home/data/TipItem;

    .prologue
    .line 63
    iget-object v1, p0, Lcom/sonymobile/home/tip/TipManager;->mTipItems:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->indexOfValue(Ljava/lang/Object;)I

    move-result v0

    .line 64
    .local v0, "index":I
    if-ltz v0, :cond_0

    .line 65
    iget-object v1, p0, Lcom/sonymobile/home/tip/TipManager;->mTipItems:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->removeAt(I)V

    .line 67
    :cond_0
    return-void
.end method
