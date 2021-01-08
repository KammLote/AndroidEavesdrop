.class final Lcom/google/android/gms/internal/zzchg;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic zzbjh:Ljava/lang/String;

.field private synthetic zzbtf:Lcom/google/android/gms/internal/zzcgp;

.field private synthetic zzbtl:Ljava/lang/String;

.field private synthetic zzbtm:Ljava/lang/String;

.field private synthetic zzbtn:J


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzcgp;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/gms/internal/zzchg;->zzbtf:Lcom/google/android/gms/internal/zzcgp;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzchg;->zzbtl:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzchg;->zzbjh:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzchg;->zzbtm:Ljava/lang/String;

    iput-wide p5, p0, Lcom/google/android/gms/internal/zzchg;->zzbtn:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzchg;->zzbtl:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzchg;->zzbtf:Lcom/google/android/gms/internal/zzcgp;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzcgp;->zza(Lcom/google/android/gms/internal/zzcgp;)Lcom/google/android/gms/internal/zzcgk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcgk;->zzwx()Lcom/google/android/gms/internal/zzchy;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzchg;->zzbjh:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzchy;->zza(Ljava/lang/String;Lcom/google/android/gms/measurement/AppMeasurement$zzb;)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/google/android/gms/measurement/AppMeasurement$zzb;

    invoke-direct {v0}, Lcom/google/android/gms/measurement/AppMeasurement$zzb;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzchg;->zzbtm:Ljava/lang/String;

    iput-object v1, v0, Lcom/google/android/gms/measurement/AppMeasurement$zzb;->zzboj:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzchg;->zzbtl:Ljava/lang/String;

    iput-object v1, v0, Lcom/google/android/gms/measurement/AppMeasurement$zzb;->zzbok:Ljava/lang/String;

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzchg;->zzbtn:J

    iput-wide v2, v0, Lcom/google/android/gms/measurement/AppMeasurement$zzb;->zzbol:J

    iget-object v1, p0, Lcom/google/android/gms/internal/zzchg;->zzbtf:Lcom/google/android/gms/internal/zzcgp;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzcgp;->zza(Lcom/google/android/gms/internal/zzcgp;)Lcom/google/android/gms/internal/zzcgk;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzcgk;->zzwx()Lcom/google/android/gms/internal/zzchy;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzchg;->zzbjh:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/internal/zzchy;->zza(Ljava/lang/String;Lcom/google/android/gms/measurement/AppMeasurement$zzb;)V

    goto :goto_0
.end method
