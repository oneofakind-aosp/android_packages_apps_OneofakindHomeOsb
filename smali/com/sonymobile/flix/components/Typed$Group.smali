.class public Lcom/sonymobile/flix/components/Typed$Group;
.super Lcom/sonymobile/flix/components/Group;
.source "Typed.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/flix/components/Typed;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Group"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/sonymobile/flix/components/Component;",
        ">",
        "Lcom/sonymobile/flix/components/Group;"
    }
.end annotation


# instance fields
.field private mFastTypedIterator:Lcom/sonymobile/flix/components/Component$ComponentIterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sonymobile/flix/components/Component$ComponentIterator",
            "<TT;>;"
        }
    .end annotation
.end field

.field private mType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/sonymobile/flix/components/Scene;Ljava/lang/Class;)V
    .locals 0
    .param p1, "scene"    # Lcom/sonymobile/flix/components/Scene;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sonymobile/flix/components/Scene;",
            "Ljava/lang/Class",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 123
    .local p0, "this":Lcom/sonymobile/flix/components/Typed$Group;, "Lcom/sonymobile/flix/components/Typed$Group<TT;>;"
    .local p2, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-direct {p0, p1}, Lcom/sonymobile/flix/components/Group;-><init>(Lcom/sonymobile/flix/components/Scene;)V

    .line 124
    iput-object p2, p0, Lcom/sonymobile/flix/components/Typed$Group;->mType:Ljava/lang/Class;

    .line 125
    return-void
.end method


# virtual methods
.method public addChild(Lcom/sonymobile/flix/components/Component;)V
    .locals 3
    .param p1, "child"    # Lcom/sonymobile/flix/components/Component;

    .prologue
    .line 129
    .local p0, "this":Lcom/sonymobile/flix/components/Typed$Group;, "Lcom/sonymobile/flix/components/Typed$Group<TT;>;"
    if-nez p1, :cond_0

    .line 130
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot add a null child."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 132
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/flix/components/Typed$Group;->mType:Ljava/lang/Class;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sonymobile/flix/components/Typed$Group;->mType:Ljava/lang/Class;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 133
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Only items of type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sonymobile/flix/components/Typed$Group;->mType:Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " may be added to this group"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 136
    :cond_1
    invoke-super {p0, p1}, Lcom/sonymobile/flix/components/Group;->addChild(Lcom/sonymobile/flix/components/Component;)V

    .line 137
    return-void
.end method

.method public addChildAt(ILcom/sonymobile/flix/components/Component;)V
    .locals 3
    .param p1, "index"    # I
    .param p2, "child"    # Lcom/sonymobile/flix/components/Component;

    .prologue
    .line 141
    .local p0, "this":Lcom/sonymobile/flix/components/Typed$Group;, "Lcom/sonymobile/flix/components/Typed$Group<TT;>;"
    if-nez p2, :cond_0

    .line 142
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot add a null child."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 144
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/flix/components/Typed$Group;->mType:Ljava/lang/Class;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sonymobile/flix/components/Typed$Group;->mType:Ljava/lang/Class;

    invoke-virtual {v0, p2}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 145
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Only items of type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sonymobile/flix/components/Typed$Group;->mType:Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " may be added to this group"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 148
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/sonymobile/flix/components/Group;->addChildAt(ILcom/sonymobile/flix/components/Component;)V

    .line 149
    return-void
.end method

.method public getChild(I)Lcom/sonymobile/flix/components/Component;
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .prologue
    .line 163
    .local p0, "this":Lcom/sonymobile/flix/components/Typed$Group;, "Lcom/sonymobile/flix/components/Typed$Group<TT;>;"
    invoke-super {p0, p1}, Lcom/sonymobile/flix/components/Group;->getChild(I)Lcom/sonymobile/flix/components/Component;

    move-result-object v0

    return-object v0
.end method

.method public getTypedIterator()Lcom/sonymobile/flix/components/Component$ComponentIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/sonymobile/flix/components/Component$ComponentIterator",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 180
    .local p0, "this":Lcom/sonymobile/flix/components/Typed$Group;, "Lcom/sonymobile/flix/components/Typed$Group<TT;>;"
    iget-object v0, p0, Lcom/sonymobile/flix/components/Typed$Group;->mFastTypedIterator:Lcom/sonymobile/flix/components/Component$ComponentIterator;

    if-eqz v0, :cond_0

    .line 181
    iget-object v0, p0, Lcom/sonymobile/flix/components/Typed$Group;->mFastTypedIterator:Lcom/sonymobile/flix/components/Component$ComponentIterator;

    invoke-virtual {v0}, Lcom/sonymobile/flix/components/Component$ComponentIterator;->reset()V

    .line 182
    iget-object v0, p0, Lcom/sonymobile/flix/components/Typed$Group;->mFastTypedIterator:Lcom/sonymobile/flix/components/Component$ComponentIterator;

    .line 184
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/sonymobile/flix/components/Component$ComponentIterator;

    invoke-direct {v0, p0}, Lcom/sonymobile/flix/components/Component$ComponentIterator;-><init>(Lcom/sonymobile/flix/components/Component;)V

    goto :goto_0
.end method

.method public removeChildAt(I)Lcom/sonymobile/flix/components/Component;
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .prologue
    .line 153
    .local p0, "this":Lcom/sonymobile/flix/components/Typed$Group;, "Lcom/sonymobile/flix/components/Typed$Group<TT;>;"
    invoke-super {p0, p1}, Lcom/sonymobile/flix/components/Group;->removeChildAt(I)Lcom/sonymobile/flix/components/Component;

    move-result-object v0

    return-object v0
.end method

.method public replaceChildAt(ILcom/sonymobile/flix/components/Component;)Lcom/sonymobile/flix/components/Component;
    .locals 1
    .param p1, "index"    # I
    .param p2, "with"    # Lcom/sonymobile/flix/components/Component;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/sonymobile/flix/components/Component;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 158
    .local p0, "this":Lcom/sonymobile/flix/components/Typed$Group;, "Lcom/sonymobile/flix/components/Typed$Group<TT;>;"
    invoke-super {p0, p1, p2}, Lcom/sonymobile/flix/components/Group;->replaceChildAt(ILcom/sonymobile/flix/components/Component;)Lcom/sonymobile/flix/components/Component;

    move-result-object v0

    return-object v0
.end method
