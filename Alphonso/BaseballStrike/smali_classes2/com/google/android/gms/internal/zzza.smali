.class final Lcom/google/android/gms/internal/zzza;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzrd;


# instance fields
.field private synthetic zzSb:Lcom/google/android/gms/internal/zzyw;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzyw;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzza;->zzSb:Lcom/google/android/gms/internal/zzyw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/zzajz;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzajz;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzza;->zzSb:Lcom/google/android/gms/internal/zzyw;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzyw;->zza(Lcom/google/android/gms/internal/zzyw;)Lcom/google/android/gms/ads/internal/zzbb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/zzbb;->zzbj()V

    return-void
.end method
