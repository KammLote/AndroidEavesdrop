.class public final Lcom/google/android/gms/internal/dh;
.super Ljava/lang/Object;


# instance fields
.field private final zzbKZ:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/dc;",
            ">;"
        }
    .end annotation
.end field

.field private final zzbLa:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/dc;",
            ">;"
        }
    .end annotation
.end field

.field private final zzbLb:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/dc;",
            ">;"
        }
    .end annotation
.end field

.field private final zzbLc:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/dc;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/dh;->zzbKZ:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/dh;->zzbLa:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/dh;->zzbLb:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/dh;->zzbLc:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final zzDe()Lcom/google/android/gms/internal/df;
    .locals 6

    new-instance v0, Lcom/google/android/gms/internal/df;

    iget-object v1, p0, Lcom/google/android/gms/internal/dh;->zzbKZ:Ljava/util/List;

    iget-object v2, p0, Lcom/google/android/gms/internal/dh;->zzbLa:Ljava/util/List;

    iget-object v3, p0, Lcom/google/android/gms/internal/dh;->zzbLb:Ljava/util/List;

    iget-object v4, p0, Lcom/google/android/gms/internal/dh;->zzbLc:Ljava/util/List;

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/df;-><init>(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/google/android/gms/internal/dg;)V

    return-object v0
.end method

.method public final zzc(Lcom/google/android/gms/internal/dc;)Lcom/google/android/gms/internal/dh;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/dh;->zzbKZ:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public final zzd(Lcom/google/android/gms/internal/dc;)Lcom/google/android/gms/internal/dh;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/dh;->zzbLa:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public final zze(Lcom/google/android/gms/internal/dc;)Lcom/google/android/gms/internal/dh;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/dh;->zzbLb:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public final zzf(Lcom/google/android/gms/internal/dc;)Lcom/google/android/gms/internal/dh;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/dh;->zzbLc:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method
