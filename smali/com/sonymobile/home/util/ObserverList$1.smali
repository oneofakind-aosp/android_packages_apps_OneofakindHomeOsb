.class Lcom/sonymobile/home/util/ObserverList$1;
.super Ljava/lang/Object;
.source "ObserverList.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/home/util/ObserverList;->notifyObservers(Lcom/sonymobile/home/util/ObserverList$DispatchRunnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/home/util/ObserverList;

.field final synthetic val$observerItem:Ljava/lang/Object;

.field final synthetic val$runnable:Lcom/sonymobile/home/util/ObserverList$DispatchRunnable;


# direct methods
.method constructor <init>(Lcom/sonymobile/home/util/ObserverList;Lcom/sonymobile/home/util/ObserverList$DispatchRunnable;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 195
    .local p0, "this":Lcom/sonymobile/home/util/ObserverList$1;, "Lcom/sonymobile/home/util/ObserverList.1;"
    iput-object p1, p0, Lcom/sonymobile/home/util/ObserverList$1;->this$0:Lcom/sonymobile/home/util/ObserverList;

    iput-object p2, p0, Lcom/sonymobile/home/util/ObserverList$1;->val$runnable:Lcom/sonymobile/home/util/ObserverList$DispatchRunnable;

    iput-object p3, p0, Lcom/sonymobile/home/util/ObserverList$1;->val$observerItem:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 198
    .local p0, "this":Lcom/sonymobile/home/util/ObserverList$1;, "Lcom/sonymobile/home/util/ObserverList.1;"
    iget-object v0, p0, Lcom/sonymobile/home/util/ObserverList$1;->val$runnable:Lcom/sonymobile/home/util/ObserverList$DispatchRunnable;

    iget-object v1, p0, Lcom/sonymobile/home/util/ObserverList$1;->val$observerItem:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/sonymobile/home/util/ObserverList$DispatchRunnable;->run(Ljava/lang/Object;)V

    .line 199
    return-void
.end method
