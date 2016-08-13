.class Lcom/sonymobile/home/cui/CuiGridAdapter$1;
.super Ljava/lang/Object;
.source "CuiGridAdapter.java"

# interfaces
.implements Lcom/sonymobile/home/cui/CuiGridModel$CuiGridModelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/home/cui/CuiGridAdapter;->createOnModelListener()Lcom/sonymobile/home/cui/CuiGridModel$CuiGridModelListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/home/cui/CuiGridAdapter;


# direct methods
.method constructor <init>(Lcom/sonymobile/home/cui/CuiGridAdapter;)V
    .locals 0

    .prologue
    .line 38
    iput-object p1, p0, Lcom/sonymobile/home/cui/CuiGridAdapter$1;->this$0:Lcom/sonymobile/home/cui/CuiGridAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onModelItemChanged(I)V
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 47
    iget-object v0, p0, Lcom/sonymobile/home/cui/CuiGridAdapter$1;->this$0:Lcom/sonymobile/home/cui/CuiGridAdapter;

    invoke-virtual {v0, p1}, Lcom/sonymobile/home/cui/CuiGridAdapter;->notifyViewChanged(I)V

    .line 48
    return-void
.end method

.method public onModelLoaded()V
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/sonymobile/home/cui/CuiGridAdapter$1;->this$0:Lcom/sonymobile/home/cui/CuiGridAdapter;

    invoke-virtual {v0}, Lcom/sonymobile/home/cui/CuiGridAdapter;->notifyContentChanged()V

    .line 43
    return-void
.end method
