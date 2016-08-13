.class public Lcom/sonymobile/flix/components/ComponentListeners;
.super Ljava/lang/Object;
.source "ComponentListeners.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/flix/components/ComponentListeners$ChangeListener;,
        Lcom/sonymobile/flix/components/ComponentListeners$BoundsChangeListener;,
        Lcom/sonymobile/flix/components/ComponentListeners$VisibilityChangeListener;,
        Lcom/sonymobile/flix/components/ComponentListeners$HierarchyChangeListener;
    }
.end annotation


# instance fields
.field protected mAddedRecursiveQueue:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/flix/components/Component;",
            ">;"
        }
    .end annotation
.end field

.field protected final mBoundsChangeListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/flix/components/ComponentListeners$BoundsChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field protected final mChangeListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/flix/components/ComponentListeners$ChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field protected final mHierarchyChangeListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/flix/components/ComponentListeners$HierarchyChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field protected mNbrBoundsChangeListeners:I

.field protected mNbrChangeListeners:I

.field protected mNbrHierarchyChangeListeners:I

.field protected mNbrVisibilityChangeListeners:I

.field protected mRemovedRecursiveQueue:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/flix/components/Component;",
            ">;"
        }
    .end annotation
.end field

.field protected final mVisibilityChangeListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/flix/components/ComponentListeners$VisibilityChangeListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/flix/components/ComponentListeners;->mChangeListeners:Ljava/util/List;

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/flix/components/ComponentListeners;->mHierarchyChangeListeners:Ljava/util/List;

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/flix/components/ComponentListeners;->mVisibilityChangeListeners:Ljava/util/List;

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/flix/components/ComponentListeners;->mBoundsChangeListeners:Ljava/util/List;

    .line 38
    return-void
.end method


# virtual methods
.method public addListener(Lcom/sonymobile/flix/components/ComponentListeners$BoundsChangeListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/sonymobile/flix/components/ComponentListeners$BoundsChangeListener;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/sonymobile/flix/components/ComponentListeners;->mBoundsChangeListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 71
    iget v0, p0, Lcom/sonymobile/flix/components/ComponentListeners;->mNbrBoundsChangeListeners:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sonymobile/flix/components/ComponentListeners;->mNbrBoundsChangeListeners:I

    .line 72
    return-void
.end method

.method public addListener(Lcom/sonymobile/flix/components/ComponentListeners$ChangeListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/sonymobile/flix/components/ComponentListeners$ChangeListener;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/sonymobile/flix/components/ComponentListeners;->mChangeListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 42
    iget v0, p0, Lcom/sonymobile/flix/components/ComponentListeners;->mNbrChangeListeners:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sonymobile/flix/components/ComponentListeners;->mNbrChangeListeners:I

    .line 43
    return-void
.end method

.method public addListener(Lcom/sonymobile/flix/components/ComponentListeners$HierarchyChangeListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/sonymobile/flix/components/ComponentListeners$HierarchyChangeListener;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/sonymobile/flix/components/ComponentListeners;->mHierarchyChangeListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 52
    iget v0, p0, Lcom/sonymobile/flix/components/ComponentListeners;->mNbrHierarchyChangeListeners:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sonymobile/flix/components/ComponentListeners;->mNbrHierarchyChangeListeners:I

    .line 53
    return-void
.end method

.method public addListener(Lcom/sonymobile/flix/components/ComponentListeners$VisibilityChangeListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/sonymobile/flix/components/ComponentListeners$VisibilityChangeListener;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/sonymobile/flix/components/ComponentListeners;->mVisibilityChangeListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 62
    iget v0, p0, Lcom/sonymobile/flix/components/ComponentListeners;->mNbrVisibilityChangeListeners:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sonymobile/flix/components/ComponentListeners;->mNbrVisibilityChangeListeners:I

    .line 63
    return-void
.end method

.method notifyAlphaChanged(Lcom/sonymobile/flix/components/Component;F)V
    .locals 2
    .param p1, "component"    # Lcom/sonymobile/flix/components/Component;
    .param p2, "alpha"    # F

    .prologue
    .line 112
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/sonymobile/flix/components/ComponentListeners;->mNbrChangeListeners:I

    if-ge v0, v1, :cond_0

    .line 113
    iget-object v1, p0, Lcom/sonymobile/flix/components/ComponentListeners;->mChangeListeners:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/flix/components/ComponentListeners$ChangeListener;

    invoke-interface {v1, p1, p2}, Lcom/sonymobile/flix/components/ComponentListeners$ChangeListener;->onAlphaChanged(Lcom/sonymobile/flix/components/Component;F)V

    .line 112
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 115
    :cond_0
    return-void
.end method

.method protected notifyComponentAdded(Lcom/sonymobile/flix/components/Component;Lcom/sonymobile/flix/components/Component;)V
    .locals 3
    .param p1, "component"    # Lcom/sonymobile/flix/components/Component;
    .param p2, "addedTo"    # Lcom/sonymobile/flix/components/Component;

    .prologue
    .line 120
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v2, p0, Lcom/sonymobile/flix/components/ComponentListeners;->mNbrHierarchyChangeListeners:I

    if-ge v0, v2, :cond_1

    .line 121
    iget-object v2, p0, Lcom/sonymobile/flix/components/ComponentListeners;->mHierarchyChangeListeners:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/flix/components/ComponentListeners$HierarchyChangeListener;

    .line 122
    .local v1, "listener":Lcom/sonymobile/flix/components/ComponentListeners$HierarchyChangeListener;
    instance-of v2, v1, Lcom/sonymobile/flix/components/ComponentListeners$HierarchyChangeListener$Recursive;

    if-eqz v2, :cond_0

    .line 123
    check-cast v1, Lcom/sonymobile/flix/components/ComponentListeners$HierarchyChangeListener$Recursive;

    .end local v1    # "listener":Lcom/sonymobile/flix/components/ComponentListeners$HierarchyChangeListener;
    invoke-virtual {p0, v1, p1, p2}, Lcom/sonymobile/flix/components/ComponentListeners;->notifyComponentAddedRecursive(Lcom/sonymobile/flix/components/ComponentListeners$HierarchyChangeListener$Recursive;Lcom/sonymobile/flix/components/Component;Lcom/sonymobile/flix/components/Component;)V

    .line 120
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 126
    .restart local v1    # "listener":Lcom/sonymobile/flix/components/ComponentListeners$HierarchyChangeListener;
    :cond_0
    invoke-interface {v1, p1, p2}, Lcom/sonymobile/flix/components/ComponentListeners$HierarchyChangeListener;->onComponentAdded(Lcom/sonymobile/flix/components/Component;Lcom/sonymobile/flix/components/Component;)V

    goto :goto_1

    .line 129
    .end local v1    # "listener":Lcom/sonymobile/flix/components/ComponentListeners$HierarchyChangeListener;
    :cond_1
    return-void
.end method

.method protected notifyComponentAddedRecursive(Lcom/sonymobile/flix/components/ComponentListeners$HierarchyChangeListener$Recursive;Lcom/sonymobile/flix/components/Component;Lcom/sonymobile/flix/components/Component;)V
    .locals 4
    .param p1, "listener"    # Lcom/sonymobile/flix/components/ComponentListeners$HierarchyChangeListener$Recursive;
    .param p2, "component"    # Lcom/sonymobile/flix/components/Component;
    .param p3, "addedTo"    # Lcom/sonymobile/flix/components/Component;

    .prologue
    const/4 v3, 0x0

    .line 145
    iget-object v2, p0, Lcom/sonymobile/flix/components/ComponentListeners;->mAddedRecursiveQueue:Ljava/util/List;

    if-nez v2, :cond_0

    .line 146
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/sonymobile/flix/components/ComponentListeners;->mAddedRecursiveQueue:Ljava/util/List;

    .line 149
    :cond_0
    iget-object v2, p0, Lcom/sonymobile/flix/components/ComponentListeners;->mAddedRecursiveQueue:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    .line 150
    .local v0, "first":Z
    iget-object v2, p0, Lcom/sonymobile/flix/components/ComponentListeners;->mAddedRecursiveQueue:Ljava/util/List;

    invoke-virtual {p0, p2, v2}, Lcom/sonymobile/flix/components/ComponentListeners;->putInRecursiveQueue(Lcom/sonymobile/flix/components/Component;Ljava/util/List;)V

    .line 151
    if-eqz v0, :cond_2

    .line 152
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/sonymobile/flix/components/ComponentListeners;->mAddedRecursiveQueue:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 153
    iget-object v2, p0, Lcom/sonymobile/flix/components/ComponentListeners;->mAddedRecursiveQueue:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonymobile/flix/components/Component;

    invoke-interface {p1, v2, v3}, Lcom/sonymobile/flix/components/ComponentListeners$HierarchyChangeListener$Recursive;->onComponentAdded(Lcom/sonymobile/flix/components/Component;Lcom/sonymobile/flix/components/Component;)V

    .line 154
    iget-object v2, p0, Lcom/sonymobile/flix/components/ComponentListeners;->mAddedRecursiveQueue:Ljava/util/List;

    invoke-interface {v2, v1, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 152
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 156
    :cond_1
    iget-object v2, p0, Lcom/sonymobile/flix/components/ComponentListeners;->mAddedRecursiveQueue:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 158
    .end local v1    # "i":I
    :cond_2
    return-void
.end method

.method protected notifyComponentRemoved(Lcom/sonymobile/flix/components/Component;Lcom/sonymobile/flix/components/Component;)V
    .locals 3
    .param p1, "component"    # Lcom/sonymobile/flix/components/Component;
    .param p2, "removedFrom"    # Lcom/sonymobile/flix/components/Component;

    .prologue
    .line 132
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v2, p0, Lcom/sonymobile/flix/components/ComponentListeners;->mNbrHierarchyChangeListeners:I

    if-ge v0, v2, :cond_1

    .line 133
    iget-object v2, p0, Lcom/sonymobile/flix/components/ComponentListeners;->mHierarchyChangeListeners:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/flix/components/ComponentListeners$HierarchyChangeListener;

    .line 134
    .local v1, "listener":Lcom/sonymobile/flix/components/ComponentListeners$HierarchyChangeListener;
    instance-of v2, v1, Lcom/sonymobile/flix/components/ComponentListeners$HierarchyChangeListener$Recursive;

    if-eqz v2, :cond_0

    .line 135
    check-cast v1, Lcom/sonymobile/flix/components/ComponentListeners$HierarchyChangeListener$Recursive;

    .end local v1    # "listener":Lcom/sonymobile/flix/components/ComponentListeners$HierarchyChangeListener;
    invoke-virtual {p0, v1, p1}, Lcom/sonymobile/flix/components/ComponentListeners;->notifyComponentRemovedRecursive(Lcom/sonymobile/flix/components/ComponentListeners$HierarchyChangeListener$Recursive;Lcom/sonymobile/flix/components/Component;)V

    .line 132
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 138
    .restart local v1    # "listener":Lcom/sonymobile/flix/components/ComponentListeners$HierarchyChangeListener;
    :cond_0
    invoke-interface {v1, p1, p2}, Lcom/sonymobile/flix/components/ComponentListeners$HierarchyChangeListener;->onComponentRemoved(Lcom/sonymobile/flix/components/Component;Lcom/sonymobile/flix/components/Component;)V

    goto :goto_1

    .line 141
    .end local v1    # "listener":Lcom/sonymobile/flix/components/ComponentListeners$HierarchyChangeListener;
    :cond_1
    return-void
.end method

.method protected notifyComponentRemovedRecursive(Lcom/sonymobile/flix/components/ComponentListeners$HierarchyChangeListener$Recursive;Lcom/sonymobile/flix/components/Component;)V
    .locals 4
    .param p1, "listener"    # Lcom/sonymobile/flix/components/ComponentListeners$HierarchyChangeListener$Recursive;
    .param p2, "component"    # Lcom/sonymobile/flix/components/Component;

    .prologue
    const/4 v3, 0x0

    .line 162
    iget-object v2, p0, Lcom/sonymobile/flix/components/ComponentListeners;->mRemovedRecursiveQueue:Ljava/util/List;

    if-nez v2, :cond_0

    .line 163
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/sonymobile/flix/components/ComponentListeners;->mRemovedRecursiveQueue:Ljava/util/List;

    .line 166
    :cond_0
    iget-object v2, p0, Lcom/sonymobile/flix/components/ComponentListeners;->mRemovedRecursiveQueue:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    .line 167
    .local v0, "first":Z
    iget-object v2, p0, Lcom/sonymobile/flix/components/ComponentListeners;->mRemovedRecursiveQueue:Ljava/util/List;

    invoke-virtual {p0, p2, v2}, Lcom/sonymobile/flix/components/ComponentListeners;->putInRecursiveQueue(Lcom/sonymobile/flix/components/Component;Ljava/util/List;)V

    .line 168
    if-eqz v0, :cond_2

    .line 169
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/sonymobile/flix/components/ComponentListeners;->mRemovedRecursiveQueue:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 170
    iget-object v2, p0, Lcom/sonymobile/flix/components/ComponentListeners;->mRemovedRecursiveQueue:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonymobile/flix/components/Component;

    invoke-interface {p1, v2, v3}, Lcom/sonymobile/flix/components/ComponentListeners$HierarchyChangeListener$Recursive;->onComponentRemoved(Lcom/sonymobile/flix/components/Component;Lcom/sonymobile/flix/components/Component;)V

    .line 171
    iget-object v2, p0, Lcom/sonymobile/flix/components/ComponentListeners;->mRemovedRecursiveQueue:Ljava/util/List;

    invoke-interface {v2, v1, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 169
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 173
    :cond_1
    iget-object v2, p0, Lcom/sonymobile/flix/components/ComponentListeners;->mRemovedRecursiveQueue:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 175
    .end local v1    # "i":I
    :cond_2
    return-void
.end method

.method notifyCullingChanged(Lcom/sonymobile/flix/components/Component;Z)V
    .locals 2
    .param p1, "component"    # Lcom/sonymobile/flix/components/Component;
    .param p2, "culled"    # Z

    .prologue
    .line 195
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/sonymobile/flix/components/ComponentListeners;->mNbrVisibilityChangeListeners:I

    if-ge v0, v1, :cond_0

    .line 196
    iget-object v1, p0, Lcom/sonymobile/flix/components/ComponentListeners;->mVisibilityChangeListeners:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/flix/components/ComponentListeners$VisibilityChangeListener;

    invoke-interface {v1, p1, p2}, Lcom/sonymobile/flix/components/ComponentListeners$VisibilityChangeListener;->onCullingChanged(Lcom/sonymobile/flix/components/Component;Z)V

    .line 195
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 198
    :cond_0
    return-void
.end method

.method notifyIdChanged(Lcom/sonymobile/flix/components/Component;I)V
    .locals 2
    .param p1, "component"    # Lcom/sonymobile/flix/components/Component;
    .param p2, "id"    # I

    .prologue
    .line 88
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/sonymobile/flix/components/ComponentListeners;->mNbrChangeListeners:I

    if-ge v0, v1, :cond_0

    .line 89
    iget-object v1, p0, Lcom/sonymobile/flix/components/ComponentListeners;->mChangeListeners:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/flix/components/ComponentListeners$ChangeListener;

    invoke-interface {v1, p1, p2}, Lcom/sonymobile/flix/components/ComponentListeners$ChangeListener;->onIdChanged(Lcom/sonymobile/flix/components/Component;I)V

    .line 88
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 91
    :cond_0
    return-void
.end method

.method notifyNameChanged(Lcom/sonymobile/flix/components/Component;Ljava/lang/String;)V
    .locals 2
    .param p1, "component"    # Lcom/sonymobile/flix/components/Component;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 82
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/sonymobile/flix/components/ComponentListeners;->mNbrChangeListeners:I

    if-ge v0, v1, :cond_0

    .line 83
    iget-object v1, p0, Lcom/sonymobile/flix/components/ComponentListeners;->mChangeListeners:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/flix/components/ComponentListeners$ChangeListener;

    invoke-interface {v1, p1, p2}, Lcom/sonymobile/flix/components/ComponentListeners$ChangeListener;->onNameChanged(Lcom/sonymobile/flix/components/Component;Ljava/lang/String;)V

    .line 82
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 85
    :cond_0
    return-void
.end method

.method notifyOrderSet(Lcom/sonymobile/flix/components/Component;F)V
    .locals 2
    .param p1, "component"    # Lcom/sonymobile/flix/components/Component;
    .param p2, "order"    # F

    .prologue
    .line 106
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/sonymobile/flix/components/ComponentListeners;->mNbrChangeListeners:I

    if-ge v0, v1, :cond_0

    .line 107
    iget-object v1, p0, Lcom/sonymobile/flix/components/ComponentListeners;->mChangeListeners:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/flix/components/ComponentListeners$ChangeListener;

    invoke-interface {v1, p1, p2}, Lcom/sonymobile/flix/components/ComponentListeners$ChangeListener;->onOrderChanged(Lcom/sonymobile/flix/components/Component;F)V

    .line 106
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 109
    :cond_0
    return-void
.end method

.method notifyPropertyRemoved(Lcom/sonymobile/flix/components/Component;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .param p1, "component"    # Lcom/sonymobile/flix/components/Component;
    .param p2, "property"    # Ljava/lang/Object;
    .param p3, "value"    # Ljava/lang/Object;

    .prologue
    .line 100
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/sonymobile/flix/components/ComponentListeners;->mNbrChangeListeners:I

    if-ge v0, v1, :cond_0

    .line 101
    iget-object v1, p0, Lcom/sonymobile/flix/components/ComponentListeners;->mChangeListeners:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/flix/components/ComponentListeners$ChangeListener;

    invoke-interface {v1, p1, p2, p3}, Lcom/sonymobile/flix/components/ComponentListeners$ChangeListener;->onPropertyRemoved(Lcom/sonymobile/flix/components/Component;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 100
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 103
    :cond_0
    return-void
.end method

.method notifyPropertySet(Lcom/sonymobile/flix/components/Component;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .param p1, "component"    # Lcom/sonymobile/flix/components/Component;
    .param p2, "property"    # Ljava/lang/Object;
    .param p3, "value"    # Ljava/lang/Object;

    .prologue
    .line 94
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/sonymobile/flix/components/ComponentListeners;->mNbrChangeListeners:I

    if-ge v0, v1, :cond_0

    .line 95
    iget-object v1, p0, Lcom/sonymobile/flix/components/ComponentListeners;->mChangeListeners:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/flix/components/ComponentListeners$ChangeListener;

    invoke-interface {v1, p1, p2, p3}, Lcom/sonymobile/flix/components/ComponentListeners$ChangeListener;->onPropertySet(Lcom/sonymobile/flix/components/Component;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 94
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 97
    :cond_0
    return-void
.end method

.method notifySizeChanged(Lcom/sonymobile/flix/components/Component;FF)V
    .locals 2
    .param p1, "component"    # Lcom/sonymobile/flix/components/Component;
    .param p2, "width"    # F
    .param p3, "height"    # F

    .prologue
    .line 203
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/sonymobile/flix/components/ComponentListeners;->mNbrBoundsChangeListeners:I

    if-ge v0, v1, :cond_0

    .line 204
    iget-object v1, p0, Lcom/sonymobile/flix/components/ComponentListeners;->mBoundsChangeListeners:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/flix/components/ComponentListeners$BoundsChangeListener;

    invoke-interface {v1, p1, p2, p3}, Lcom/sonymobile/flix/components/ComponentListeners$BoundsChangeListener;->onSizeChanged(Lcom/sonymobile/flix/components/Component;FF)V

    .line 203
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 206
    :cond_0
    return-void
.end method

.method notifyVisibilityChanged(Lcom/sonymobile/flix/components/Component;Z)V
    .locals 2
    .param p1, "component"    # Lcom/sonymobile/flix/components/Component;
    .param p2, "visible"    # Z

    .prologue
    .line 189
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/sonymobile/flix/components/ComponentListeners;->mNbrVisibilityChangeListeners:I

    if-ge v0, v1, :cond_0

    .line 190
    iget-object v1, p0, Lcom/sonymobile/flix/components/ComponentListeners;->mVisibilityChangeListeners:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/flix/components/ComponentListeners$VisibilityChangeListener;

    invoke-interface {v1, p1, p2}, Lcom/sonymobile/flix/components/ComponentListeners$VisibilityChangeListener;->onVisibilityChanged(Lcom/sonymobile/flix/components/Component;Z)V

    .line 189
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 192
    :cond_0
    return-void
.end method

.method protected putInRecursiveQueue(Lcom/sonymobile/flix/components/Component;Ljava/util/List;)V
    .locals 3
    .param p1, "component"    # Lcom/sonymobile/flix/components/Component;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sonymobile/flix/components/Component;",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/flix/components/Component;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 178
    .local p2, "recursiveQueue":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/flix/components/Component;>;"
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 179
    invoke-virtual {p1}, Lcom/sonymobile/flix/components/Component;->getNbrChildren()I

    move-result v2

    .line 180
    .local v2, "nbrChildren":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 181
    invoke-virtual {p1, v1}, Lcom/sonymobile/flix/components/Component;->getChild(I)Lcom/sonymobile/flix/components/Component;

    move-result-object v0

    .line 182
    .local v0, "child":Lcom/sonymobile/flix/components/Component;
    invoke-virtual {p0, v0, p2}, Lcom/sonymobile/flix/components/ComponentListeners;->putInRecursiveQueue(Lcom/sonymobile/flix/components/Component;Ljava/util/List;)V

    .line 180
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 184
    .end local v0    # "child":Lcom/sonymobile/flix/components/Component;
    :cond_0
    return-void
.end method

.method public removeListener(Lcom/sonymobile/flix/components/ComponentListeners$BoundsChangeListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/sonymobile/flix/components/ComponentListeners$BoundsChangeListener;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/sonymobile/flix/components/ComponentListeners;->mBoundsChangeListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 76
    iget v0, p0, Lcom/sonymobile/flix/components/ComponentListeners;->mNbrBoundsChangeListeners:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/sonymobile/flix/components/ComponentListeners;->mNbrBoundsChangeListeners:I

    .line 77
    return-void
.end method

.method public removeListener(Lcom/sonymobile/flix/components/ComponentListeners$HierarchyChangeListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/sonymobile/flix/components/ComponentListeners$HierarchyChangeListener;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/sonymobile/flix/components/ComponentListeners;->mHierarchyChangeListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 57
    iget v0, p0, Lcom/sonymobile/flix/components/ComponentListeners;->mNbrHierarchyChangeListeners:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/sonymobile/flix/components/ComponentListeners;->mNbrHierarchyChangeListeners:I

    .line 58
    return-void
.end method
