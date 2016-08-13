.class public Lcom/sonymobile/flix/components/Component$ComponentIterator;
.super Ljava/lang/Object;
.source "Component.java"

# interfaces
.implements Ljava/lang/Iterable;
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/flix/components/Component;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ComponentIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable",
        "<TT;>;",
        "Ljava/util/Iterator",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private mIndex:I

.field private mSize:I

.field final synthetic this$0:Lcom/sonymobile/flix/components/Component;


# direct methods
.method public constructor <init>(Lcom/sonymobile/flix/components/Component;)V
    .locals 1

    .prologue
    .line 3886
    .local p0, "this":Lcom/sonymobile/flix/components/Component$ComponentIterator;, "Lcom/sonymobile/flix/components/Component$ComponentIterator<TT;>;"
    iput-object p1, p0, Lcom/sonymobile/flix/components/Component$ComponentIterator;->this$0:Lcom/sonymobile/flix/components/Component;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3889
    iget-object v0, p0, Lcom/sonymobile/flix/components/Component$ComponentIterator;->this$0:Lcom/sonymobile/flix/components/Component;

    iget-object v0, v0, Lcom/sonymobile/flix/components/Component;->mChildren:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonymobile/flix/components/Component$ComponentIterator;->this$0:Lcom/sonymobile/flix/components/Component;

    iget-object v0, v0, Lcom/sonymobile/flix/components/Component;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_0
    iput v0, p0, Lcom/sonymobile/flix/components/Component$ComponentIterator;->mSize:I

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    .prologue
    .line 3898
    .local p0, "this":Lcom/sonymobile/flix/components/Component$ComponentIterator;, "Lcom/sonymobile/flix/components/Component$ComponentIterator<TT;>;"
    iget v0, p0, Lcom/sonymobile/flix/components/Component$ComponentIterator;->mIndex:I

    iget v1, p0, Lcom/sonymobile/flix/components/Component$ComponentIterator;->mSize:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 3915
    .local p0, "this":Lcom/sonymobile/flix/components/Component$ComponentIterator;, "Lcom/sonymobile/flix/components/Component$ComponentIterator<TT;>;"
    return-object p0
.end method

.method public next()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 3904
    .local p0, "this":Lcom/sonymobile/flix/components/Component$ComponentIterator;, "Lcom/sonymobile/flix/components/Component$ComponentIterator<TT;>;"
    iget-object v0, p0, Lcom/sonymobile/flix/components/Component$ComponentIterator;->this$0:Lcom/sonymobile/flix/components/Component;

    iget-object v0, v0, Lcom/sonymobile/flix/components/Component;->mChildren:Ljava/util/ArrayList;

    iget v1, p0, Lcom/sonymobile/flix/components/Component$ComponentIterator;->mIndex:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/sonymobile/flix/components/Component$ComponentIterator;->mIndex:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 2

    .prologue
    .line 3909
    .local p0, "this":Lcom/sonymobile/flix/components/Component$ComponentIterator;, "Lcom/sonymobile/flix/components/Component$ComponentIterator<TT;>;"
    iget-object v0, p0, Lcom/sonymobile/flix/components/Component$ComponentIterator;->this$0:Lcom/sonymobile/flix/components/Component;

    iget v1, p0, Lcom/sonymobile/flix/components/Component$ComponentIterator;->mIndex:I

    invoke-virtual {v0, v1}, Lcom/sonymobile/flix/components/Component;->removeChildAt(I)Lcom/sonymobile/flix/components/Component;

    .line 3910
    iget v0, p0, Lcom/sonymobile/flix/components/Component$ComponentIterator;->mIndex:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/sonymobile/flix/components/Component$ComponentIterator;->mIndex:I

    .line 3911
    return-void
.end method

.method public reset()V
    .locals 2

    .prologue
    .local p0, "this":Lcom/sonymobile/flix/components/Component$ComponentIterator;, "Lcom/sonymobile/flix/components/Component$ComponentIterator<TT;>;"
    const/4 v0, 0x0

    .line 3892
    iput v0, p0, Lcom/sonymobile/flix/components/Component$ComponentIterator;->mIndex:I

    .line 3893
    iget-object v1, p0, Lcom/sonymobile/flix/components/Component$ComponentIterator;->this$0:Lcom/sonymobile/flix/components/Component;

    iget-object v1, v1, Lcom/sonymobile/flix/components/Component;->mChildren:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/sonymobile/flix/components/Component$ComponentIterator;->this$0:Lcom/sonymobile/flix/components/Component;

    iget-object v0, v0, Lcom/sonymobile/flix/components/Component;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :cond_0
    iput v0, p0, Lcom/sonymobile/flix/components/Component$ComponentIterator;->mSize:I

    .line 3894
    return-void
.end method
