.class public interface abstract Lcom/sonymobile/flix/components/ComponentListeners$ChangeListener;
.super Ljava/lang/Object;
.source "ComponentListeners.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/flix/components/ComponentListeners;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ChangeListener"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/flix/components/ComponentListeners$ChangeListener$Adapter;
    }
.end annotation


# virtual methods
.method public abstract onAlphaChanged(Lcom/sonymobile/flix/components/Component;F)V
.end method

.method public abstract onIdChanged(Lcom/sonymobile/flix/components/Component;I)V
.end method

.method public abstract onNameChanged(Lcom/sonymobile/flix/components/Component;Ljava/lang/String;)V
.end method

.method public abstract onOrderChanged(Lcom/sonymobile/flix/components/Component;F)V
.end method

.method public abstract onPropertyRemoved(Lcom/sonymobile/flix/components/Component;Ljava/lang/Object;Ljava/lang/Object;)V
.end method

.method public abstract onPropertySet(Lcom/sonymobile/flix/components/Component;Ljava/lang/Object;Ljava/lang/Object;)V
.end method
