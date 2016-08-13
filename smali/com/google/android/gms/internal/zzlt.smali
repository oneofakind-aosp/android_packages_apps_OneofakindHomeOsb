.class public Lcom/google/android/gms/internal/zzlt;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/clearcut/zzb;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zzlt$zze;,
        Lcom/google/android/gms/internal/zzlt$zzb;,
        Lcom/google/android/gms/internal/zzlt$zza;
    }
.end annotation


# static fields
.field private static final zzadD:Ljava/lang/Object;

.field private static final zzadE:Lcom/google/android/gms/internal/zzlt$zze;

.field private static final zzadF:J


# instance fields
.field private zzYC:Lcom/google/android/gms/common/api/GoogleApiClient;

.field private final zzadG:Lcom/google/android/gms/internal/zzlt$zza;

.field private final zzadH:Ljava/lang/Object;

.field private zzadI:J

.field private final zzadJ:J

.field private zzadK:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture",
            "<*>;"
        }
    .end annotation
.end field

.field private final zzadL:Ljava/lang/Runnable;

.field private final zzqD:Lcom/google/android/gms/internal/zznl;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzlt;->zzadD:Ljava/lang/Object;

    new-instance v0, Lcom/google/android/gms/internal/zzlt$zze;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzlt$zze;-><init>(Lcom/google/android/gms/internal/zzlt$1;)V

    sput-object v0, Lcom/google/android/gms/internal/zzlt;->zzadE:Lcom/google/android/gms/internal/zzlt$zze;

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x2

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v1}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    sput-wide v0, Lcom/google/android/gms/internal/zzlt;->zzadF:J

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    new-instance v0, Lcom/google/android/gms/internal/zzno;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzno;-><init>()V

    sget-wide v2, Lcom/google/android/gms/internal/zzlt;->zzadF:J

    new-instance v1, Lcom/google/android/gms/internal/zzlt$zzb;

    invoke-direct {v1}, Lcom/google/android/gms/internal/zzlt$zzb;-><init>()V

    invoke-direct {p0, v0, v2, v3, v1}, Lcom/google/android/gms/internal/zzlt;-><init>(Lcom/google/android/gms/internal/zznl;JLcom/google/android/gms/internal/zzlt$zza;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/zznl;JLcom/google/android/gms/internal/zzlt$zza;)V
    .locals 4

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzlt;->zzadH:Ljava/lang/Object;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzlt;->zzadI:J

    iput-object v2, p0, Lcom/google/android/gms/internal/zzlt;->zzadK:Ljava/util/concurrent/ScheduledFuture;

    iput-object v2, p0, Lcom/google/android/gms/internal/zzlt;->zzYC:Lcom/google/android/gms/common/api/GoogleApiClient;

    new-instance v0, Lcom/google/android/gms/internal/zzlt$1;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzlt$1;-><init>(Lcom/google/android/gms/internal/zzlt;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzlt;->zzadL:Ljava/lang/Runnable;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzlt;->zzqD:Lcom/google/android/gms/internal/zznl;

    iput-wide p2, p0, Lcom/google/android/gms/internal/zzlt;->zzadJ:J

    iput-object p4, p0, Lcom/google/android/gms/internal/zzlt;->zzadG:Lcom/google/android/gms/internal/zzlt$zza;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzlt;Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/common/api/GoogleApiClient;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzlt;->zzYC:Lcom/google/android/gms/common/api/GoogleApiClient;

    return-object p1
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzlt;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzlt;->zzadH:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/zzlt;)J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/zzlt;->zzadI:J

    return-wide v0
.end method

.method static synthetic zzc(Lcom/google/android/gms/internal/zzlt;)Lcom/google/android/gms/internal/zznl;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzlt;->zzqD:Lcom/google/android/gms/internal/zznl;

    return-object v0
.end method

.method static synthetic zzd(Lcom/google/android/gms/internal/zzlt;)Lcom/google/android/gms/common/api/GoogleApiClient;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzlt;->zzYC:Lcom/google/android/gms/common/api/GoogleApiClient;

    return-object v0
.end method
