.class Lcom/google/android/gms/tagmanager/zzcb;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/tagmanager/zzcb$zza;
    }
.end annotation


# static fields
.field private static zzbeJ:Lcom/google/android/gms/tagmanager/zzcb;


# instance fields
.field private volatile zzbcF:Ljava/lang/String;

.field private volatile zzbeK:Lcom/google/android/gms/tagmanager/zzcb$zza;

.field private volatile zzbeL:Ljava/lang/String;

.field private volatile zzbeM:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/gms/tagmanager/zzcb;->clear()V

    return-void
.end method

.method static zzEY()Lcom/google/android/gms/tagmanager/zzcb;
    .locals 2

    const-class v1, Lcom/google/android/gms/tagmanager/zzcb;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/android/gms/tagmanager/zzcb;->zzbeJ:Lcom/google/android/gms/tagmanager/zzcb;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/gms/tagmanager/zzcb;

    invoke-direct {v0}, Lcom/google/android/gms/tagmanager/zzcb;-><init>()V

    sput-object v0, Lcom/google/android/gms/tagmanager/zzcb;->zzbeJ:Lcom/google/android/gms/tagmanager/zzcb;

    :cond_0
    sget-object v0, Lcom/google/android/gms/tagmanager/zzcb;->zzbeJ:Lcom/google/android/gms/tagmanager/zzcb;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method clear()V
    .locals 2

    const/4 v1, 0x0

    sget-object v0, Lcom/google/android/gms/tagmanager/zzcb$zza;->zzbeN:Lcom/google/android/gms/tagmanager/zzcb$zza;

    iput-object v0, p0, Lcom/google/android/gms/tagmanager/zzcb;->zzbeK:Lcom/google/android/gms/tagmanager/zzcb$zza;

    iput-object v1, p0, Lcom/google/android/gms/tagmanager/zzcb;->zzbeL:Ljava/lang/String;

    iput-object v1, p0, Lcom/google/android/gms/tagmanager/zzcb;->zzbcF:Ljava/lang/String;

    iput-object v1, p0, Lcom/google/android/gms/tagmanager/zzcb;->zzbeM:Ljava/lang/String;

    return-void
.end method

.method getContainerId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzcb;->zzbcF:Ljava/lang/String;

    return-object v0
.end method

.method zzEZ()Lcom/google/android/gms/tagmanager/zzcb$zza;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzcb;->zzbeK:Lcom/google/android/gms/tagmanager/zzcb$zza;

    return-object v0
.end method

.method zzFa()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzcb;->zzbeL:Ljava/lang/String;

    return-object v0
.end method
