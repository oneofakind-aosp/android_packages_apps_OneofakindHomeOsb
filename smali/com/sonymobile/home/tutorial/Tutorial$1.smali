.class Lcom/sonymobile/home/tutorial/Tutorial$1;
.super Lcom/sonymobile/flix/components/Component;
.source "Tutorial.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/home/tutorial/Tutorial;-><init>(Lcom/sonymobile/flix/components/Scene;Lcom/sonymobile/flix/components/Component;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/home/tutorial/Tutorial;


# direct methods
.method constructor <init>(Lcom/sonymobile/home/tutorial/Tutorial;Lcom/sonymobile/flix/components/Scene;)V
    .locals 0
    .param p2, "x0"    # Lcom/sonymobile/flix/components/Scene;

    .prologue
    .line 86
    iput-object p1, p0, Lcom/sonymobile/home/tutorial/Tutorial$1;->this$0:Lcom/sonymobile/home/tutorial/Tutorial;

    invoke-direct {p0, p2}, Lcom/sonymobile/flix/components/Component;-><init>(Lcom/sonymobile/flix/components/Scene;)V

    return-void
.end method


# virtual methods
.method public onAddedTo(Lcom/sonymobile/flix/components/Component;)V
    .locals 0
    .param p1, "parent"    # Lcom/sonymobile/flix/components/Component;

    .prologue
    .line 89
    invoke-super {p0, p1}, Lcom/sonymobile/flix/components/Component;->onAddedTo(Lcom/sonymobile/flix/components/Component;)V

    .line 90
    invoke-virtual {p0}, Lcom/sonymobile/home/tutorial/Tutorial$1;->setSizeToParent()V

    .line 91
    return-void
.end method
