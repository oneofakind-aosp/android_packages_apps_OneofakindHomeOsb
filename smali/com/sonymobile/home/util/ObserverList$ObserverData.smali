.class Lcom/sonymobile/home/util/ObserverList$ObserverData;
.super Ljava/lang/Object;
.source "ObserverList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/home/util/ObserverList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ObserverData"
.end annotation


# instance fields
.field public final handler:Landroid/os/Handler;

.field public final observerRef:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TType;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/sonymobile/home/util/ObserverList;


# direct methods
.method public constructor <init>(Lcom/sonymobile/home/util/ObserverList;Ljava/lang/Object;Landroid/os/Handler;)V
    .locals 0
    .param p3, "handler"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TType;",
            "Landroid/os/Handler;",
            ")V"
        }
    .end annotation

    .prologue
    .line 44
    .local p0, "this":Lcom/sonymobile/home/util/ObserverList$ObserverData;, "Lcom/sonymobile/home/util/ObserverList<TType;>.ObserverData;"
    .local p2, "observer":Ljava/lang/Object;, "TType;"
    iput-object p1, p0, Lcom/sonymobile/home/util/ObserverList$ObserverData;->this$0:Lcom/sonymobile/home/util/ObserverList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p2, p0, Lcom/sonymobile/home/util/ObserverList$ObserverData;->observerRef:Ljava/lang/Object;

    .line 46
    iput-object p3, p0, Lcom/sonymobile/home/util/ObserverList$ObserverData;->handler:Landroid/os/Handler;

    .line 47
    return-void
.end method
