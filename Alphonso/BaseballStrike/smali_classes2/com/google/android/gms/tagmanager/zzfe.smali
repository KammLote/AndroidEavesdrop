.class final Lcom/google/android/gms/tagmanager/zzfe;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/tagmanager/zzfg;


# instance fields
.field private synthetic zzbGp:Ljava/util/Map;

.field private synthetic zzbGq:Ljava/util/Map;

.field private synthetic zzbGr:Ljava/util/Map;

.field private synthetic zzbGs:Ljava/util/Map;


# direct methods
.method constructor <init>(Lcom/google/android/gms/tagmanager/zzfb;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/tagmanager/zzfe;->zzbGp:Ljava/util/Map;

    iput-object p3, p0, Lcom/google/android/gms/tagmanager/zzfe;->zzbGq:Ljava/util/Map;

    iput-object p4, p0, Lcom/google/android/gms/tagmanager/zzfe;->zzbGr:Ljava/util/Map;

    iput-object p5, p0, Lcom/google/android/gms/tagmanager/zzfe;->zzbGs:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/el;Ljava/util/Set;Ljava/util/Set;Lcom/google/android/gms/tagmanager/zzeq;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/el;",
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/gms/internal/eh;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/gms/internal/eh;",
            ">;",
            "Lcom/google/android/gms/tagmanager/zzeq;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzfe;->zzbGp:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iget-object v1, p0, Lcom/google/android/gms/tagmanager/zzfe;->zzbGq:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v0, :cond_0

    invoke-interface {p2, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    invoke-interface {p4}, Lcom/google/android/gms/tagmanager/zzeq;->zzBs()Lcom/google/android/gms/tagmanager/zzeo;

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzfe;->zzbGr:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iget-object v1, p0, Lcom/google/android/gms/tagmanager/zzfe;->zzbGs:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v0, :cond_1

    invoke-interface {p3, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    invoke-interface {p4}, Lcom/google/android/gms/tagmanager/zzeq;->zzBt()Lcom/google/android/gms/tagmanager/zzeo;

    :cond_1
    return-void
.end method
