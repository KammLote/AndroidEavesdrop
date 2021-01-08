.class final Lcom/google/android/gms/tagmanager/zzfh;
.super Ljava/lang/Object;


# instance fields
.field private zzbGt:Lcom/google/android/gms/tagmanager/zzdz;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/tagmanager/zzdz",
            "<",
            "Lcom/google/android/gms/internal/zzbr;",
            ">;"
        }
    .end annotation
.end field

.field private zzbGu:Lcom/google/android/gms/internal/zzbr;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/tagmanager/zzdz;Lcom/google/android/gms/internal/zzbr;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/tagmanager/zzdz",
            "<",
            "Lcom/google/android/gms/internal/zzbr;",
            ">;",
            "Lcom/google/android/gms/internal/zzbr;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/tagmanager/zzfh;->zzbGt:Lcom/google/android/gms/tagmanager/zzdz;

    iput-object p2, p0, Lcom/google/android/gms/tagmanager/zzfh;->zzbGu:Lcom/google/android/gms/internal/zzbr;

    return-void
.end method


# virtual methods
.method public final getSize()I
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzfh;->zzbGt:Lcom/google/android/gms/tagmanager/zzdz;

    invoke-virtual {v0}, Lcom/google/android/gms/tagmanager/zzdz;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzbr;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbr;->zzLS()I

    move-result v1

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzfh;->zzbGu:Lcom/google/android/gms/internal/zzbr;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    add-int/2addr v0, v1

    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzfh;->zzbGu:Lcom/google/android/gms/internal/zzbr;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbr;->zzLS()I

    move-result v0

    goto :goto_0
.end method

.method public final zzBL()Lcom/google/android/gms/tagmanager/zzdz;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/tagmanager/zzdz",
            "<",
            "Lcom/google/android/gms/internal/zzbr;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzfh;->zzbGt:Lcom/google/android/gms/tagmanager/zzdz;

    return-object v0
.end method

.method public final zzBM()Lcom/google/android/gms/internal/zzbr;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzfh;->zzbGu:Lcom/google/android/gms/internal/zzbr;

    return-object v0
.end method
