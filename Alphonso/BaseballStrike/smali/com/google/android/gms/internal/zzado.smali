.class public final Lcom/google/android/gms/internal/zzado;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzzm;
.end annotation


# instance fields
.field public final errorCode:I

.field public final zzLM:Ljava/lang/String;

.field public final zzMN:J

.field private zzWI:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/zzadq;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/internal/zzadq;->zza(Lcom/google/android/gms/internal/zzadq;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzado;->zzWI:Ljava/lang/String;

    invoke-static {p1}, Lcom/google/android/gms/internal/zzadq;->zzb(Lcom/google/android/gms/internal/zzadq;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzado;->zzLM:Ljava/lang/String;

    invoke-static {p1}, Lcom/google/android/gms/internal/zzadq;->zzc(Lcom/google/android/gms/internal/zzadq;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/zzado;->errorCode:I

    invoke-static {p1}, Lcom/google/android/gms/internal/zzadq;->zzd(Lcom/google/android/gms/internal/zzadq;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzado;->zzMN:J

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/zzadq;Lcom/google/android/gms/internal/zzadp;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzado;-><init>(Lcom/google/android/gms/internal/zzadq;)V

    return-void
.end method
