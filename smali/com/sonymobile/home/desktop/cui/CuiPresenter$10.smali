.class Lcom/sonymobile/home/desktop/cui/CuiPresenter$10;
.super Ljava/lang/Object;
.source "CuiPresenter.java"

# interfaces
.implements Lcom/sonymobile/home/shortcut/ShortcutManager$OnShortcutCreatedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/home/desktop/cui/CuiPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/home/desktop/cui/CuiPresenter;


# direct methods
.method constructor <init>(Lcom/sonymobile/home/desktop/cui/CuiPresenter;)V
    .locals 0

    .prologue
    .line 1233
    iput-object p1, p0, Lcom/sonymobile/home/desktop/cui/CuiPresenter$10;->this$0:Lcom/sonymobile/home/desktop/cui/CuiPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShortcutCreated(Lcom/sonymobile/home/data/ShortcutItem;)V
    .locals 2
    .param p1, "item"    # Lcom/sonymobile/home/data/ShortcutItem;

    .prologue
    const/4 v1, 0x1

    .line 1236
    iget-object v0, p0, Lcom/sonymobile/home/desktop/cui/CuiPresenter$10;->this$0:Lcom/sonymobile/home/desktop/cui/CuiPresenter;

    # getter for: Lcom/sonymobile/home/desktop/cui/CuiPresenter;->mCuiCallbackHandler:Lcom/sonymobile/home/desktop/cui/CuiCallbackHandler;
    invoke-static {v0}, Lcom/sonymobile/home/desktop/cui/CuiPresenter;->access$600(Lcom/sonymobile/home/desktop/cui/CuiPresenter;)Lcom/sonymobile/home/desktop/cui/CuiCallbackHandler;

    move-result-object v0

    invoke-interface {v0, p1, v1, v1}, Lcom/sonymobile/home/desktop/cui/CuiCallbackHandler;->onItemClicked(Lcom/sonymobile/home/data/Item;II)V

    .line 1237
    return-void
.end method

.method public onShortcutFailed()V
    .locals 0

    .prologue
    .line 1242
    return-void
.end method
