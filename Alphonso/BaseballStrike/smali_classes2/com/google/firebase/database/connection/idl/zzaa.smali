.class final Lcom/google/firebase/database/connection/idl/zzaa;
.super Lcom/google/firebase/database/connection/idl/zzw;


# instance fields
.field private synthetic zzcci:Lcom/google/android/gms/internal/on;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/on;)V
    .locals 0

    iput-object p1, p0, Lcom/google/firebase/database/connection/idl/zzaa;->zzcci:Lcom/google/android/gms/internal/on;

    invoke-direct {p0}, Lcom/google/firebase/database/connection/idl/zzw;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDisconnect()V
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/database/connection/idl/zzaa;->zzcci:Lcom/google/android/gms/internal/on;

    invoke-interface {v0}, Lcom/google/android/gms/internal/on;->onDisconnect()V

    return-void
.end method

.method public final zzGa()V
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/database/connection/idl/zzaa;->zzcci:Lcom/google/android/gms/internal/on;

    invoke-interface {v0}, Lcom/google/android/gms/internal/on;->zzGa()V

    return-void
.end method

.method public final zzN(Lcom/google/android/gms/dynamic/IObjectWrapper;)V
    .locals 2

    iget-object v1, p0, Lcom/google/firebase/database/connection/idl/zzaa;->zzcci:Lcom/google/android/gms/internal/on;

    invoke-static {p1}, Lcom/google/android/gms/dynamic/zzn;->zzE(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/on;->zzB(Ljava/util/Map;)V

    return-void
.end method

.method public final zza(Ljava/util/List;Lcom/google/android/gms/dynamic/IObjectWrapper;ZJ)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/google/android/gms/dynamic/IObjectWrapper;",
            "ZJ)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/firebase/database/connection/idl/zzaa;->zzcci:Lcom/google/android/gms/internal/on;

    invoke-static {p2}, Lcom/google/android/gms/dynamic/zzn;->zzE(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p4, p5}, Lcom/google/firebase/database/connection/idl/IPersistentConnectionImpl;->zzar(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, p1, v1, p3, v2}, Lcom/google/android/gms/internal/on;->zza(Ljava/util/List;Ljava/lang/Object;ZLjava/lang/Long;)V

    return-void
.end method

.method public final zza(Ljava/util/List;Ljava/util/List;Lcom/google/android/gms/dynamic/IObjectWrapper;J)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/google/firebase/database/connection/idl/zzaj;",
            ">;",
            "Lcom/google/android/gms/dynamic/IObjectWrapper;",
            "J)V"
        }
    .end annotation

    invoke-static {p3}, Lcom/google/android/gms/dynamic/zzn;->zzE(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v3, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_0

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/firebase/database/connection/idl/zzaj;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/google/firebase/database/connection/idl/zzaj;->zza(Lcom/google/firebase/database/connection/idl/zzaj;Ljava/lang/Object;)Lcom/google/android/gms/internal/pd;

    move-result-object v1

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/firebase/database/connection/idl/zzaa;->zzcci:Lcom/google/android/gms/internal/on;

    invoke-static {p4, p5}, Lcom/google/firebase/database/connection/idl/IPersistentConnectionImpl;->zzar(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, p1, v3, v1}, Lcom/google/android/gms/internal/on;->zza(Ljava/util/List;Ljava/util/List;Ljava/lang/Long;)V

    return-void
.end method

.method public final zzaB(Z)V
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/database/connection/idl/zzaa;->zzcci:Lcom/google/android/gms/internal/on;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/on;->zzaB(Z)V

    return-void
.end method
