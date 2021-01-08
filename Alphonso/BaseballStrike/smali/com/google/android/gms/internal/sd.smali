.class final Lcom/google/android/gms/internal/sd;
.super Lcom/google/android/gms/internal/wo;


# instance fields
.field private synthetic zzcew:Ljava/util/Map;

.field private synthetic zzcex:Lcom/google/android/gms/internal/se;


# direct methods
.method constructor <init>(Ljava/util/Map;Lcom/google/android/gms/internal/se;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/sd;->zzcew:Ljava/util/Map;

    iput-object p2, p0, Lcom/google/android/gms/internal/sd;->zzcex:Lcom/google/android/gms/internal/se;

    invoke-direct {p0}, Lcom/google/android/gms/internal/wo;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzb(Lcom/google/android/gms/internal/wj;Lcom/google/android/gms/internal/xf;)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/sd;->zzcew:Ljava/util/Map;

    invoke-static {p2, v0}, Lcom/google/android/gms/internal/sb;->zza(Lcom/google/android/gms/internal/xf;Ljava/util/Map;)Lcom/google/android/gms/internal/xf;

    move-result-object v0

    if-eq v0, p2, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/sd;->zzcex:Lcom/google/android/gms/internal/se;

    new-instance v2, Lcom/google/android/gms/internal/qo;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/wj;->asString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/qo;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/internal/se;->zzg(Lcom/google/android/gms/internal/qo;Lcom/google/android/gms/internal/xf;)V

    :cond_0
    return-void
.end method
