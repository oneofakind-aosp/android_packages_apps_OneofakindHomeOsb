.class public interface abstract Lcom/sonymobile/flix/components/ComponentListeners$HierarchyChangeListener;
.super Ljava/lang/Object;
.source "ComponentListeners.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/flix/components/ComponentListeners;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "HierarchyChangeListener"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/flix/components/ComponentListeners$HierarchyChangeListener$Recursive;
    }
.end annotation


# virtual methods
.method public abstract onComponentAdded(Lcom/sonymobile/flix/components/Component;Lcom/sonymobile/flix/components/Component;)V
.end method

.method public abstract onComponentRemoved(Lcom/sonymobile/flix/components/Component;Lcom/sonymobile/flix/components/Component;)V
.end method
