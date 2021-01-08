.class final Lcom/google/android/gms/internal/sc;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/sj;


# instance fields
.field private synthetic zzcev:Lcom/google/android/gms/internal/sf;

.field private synthetic zzcew:Ljava/util/Map;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/sf;Ljava/util/Map;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/sc;->zzcev:Lcom/google/android/gms/internal/sf;

    iput-object p2, p0, Lcom/google/android/gms/internal/sc;->zzcew:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzf(Lcom/google/android/gms/internal/qo;Lcom/google/android/gms/internal/xf;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/sc;->zzcev:Lcom/google/android/gms/internal/sf;

    iget-object v1, p0, Lcom/google/android/gms/internal/sc;->zzcew:Ljava/util/Map;

    invoke-static {p2, v1}, Lcom/google/android/gms/internal/sb;->zza(Lcom/google/android/gms/internal/xf;Ljava/util/Map;)Lcom/google/android/gms/internal/xf;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/sf;->zzh(Lcom/google/android/gms/internal/qo;Lcom/google/android/gms/internal/xf;)V

    return-void
.end method
