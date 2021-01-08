.class public final Lcom/google/android/gms/internal/ei;
.super Ljava/lang/Object;


# instance fields
.field private zzbGu:Lcom/google/android/gms/internal/zzbr;

.field private final zzbKX:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/zzbr;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ei;->zzbKX:Ljava/util/Map;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/eg;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ei;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzDx()Lcom/google/android/gms/internal/eh;
    .locals 4

    new-instance v0, Lcom/google/android/gms/internal/eh;

    iget-object v1, p0, Lcom/google/android/gms/internal/ei;->zzbKX:Ljava/util/Map;

    iget-object v2, p0, Lcom/google/android/gms/internal/ei;->zzbGu:Lcom/google/android/gms/internal/zzbr;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/internal/eh;-><init>(Ljava/util/Map;Lcom/google/android/gms/internal/zzbr;Lcom/google/android/gms/internal/eg;)V

    return-object v0
.end method

.method public final zzb(Ljava/lang/String;Lcom/google/android/gms/internal/zzbr;)Lcom/google/android/gms/internal/ei;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ei;->zzbKX:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public final zzl(Lcom/google/android/gms/internal/zzbr;)Lcom/google/android/gms/internal/ei;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ei;->zzbGu:Lcom/google/android/gms/internal/zzbr;

    return-object p0
.end method
