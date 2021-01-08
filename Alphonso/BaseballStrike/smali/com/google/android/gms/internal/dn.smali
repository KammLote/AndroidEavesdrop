.class public final Lcom/google/android/gms/internal/dn;
.super Ljava/lang/Object;


# instance fields
.field private final mValue:Ljava/lang/Object;

.field private final zzbLf:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final zzbLh:Ljava/lang/Integer;

.field private zzbLi:Z


# direct methods
.method public constructor <init>(ILjava/lang/Object;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/dn;->zzbLf:Ljava/util/List;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/dn;->zzbLi:Z

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/dn;->zzbLh:Ljava/lang/Integer;

    iput-object p2, p0, Lcom/google/android/gms/internal/dn;->mValue:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final zzDi()Lcom/google/android/gms/internal/dl;
    .locals 6

    iget-object v0, p0, Lcom/google/android/gms/internal/dn;->zzbLh:Ljava/lang/Integer;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzbo;->zzu(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/internal/dn;->mValue:Ljava/lang/Object;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzbo;->zzu(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/google/android/gms/internal/dl;

    iget-object v1, p0, Lcom/google/android/gms/internal/dn;->zzbLh:Ljava/lang/Integer;

    iget-object v2, p0, Lcom/google/android/gms/internal/dn;->mValue:Ljava/lang/Object;

    iget-object v3, p0, Lcom/google/android/gms/internal/dn;->zzbLf:Ljava/util/List;

    iget-boolean v4, p0, Lcom/google/android/gms/internal/dn;->zzbLi:Z

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/dl;-><init>(Ljava/lang/Integer;Ljava/lang/Object;Ljava/util/List;ZLcom/google/android/gms/internal/dm;)V

    return-object v0
.end method

.method public final zzau(Z)Lcom/google/android/gms/internal/dn;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/dn;->zzbLi:Z

    return-object p0
.end method

.method public final zzbF(I)Lcom/google/android/gms/internal/dn;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/dn;->zzbLf:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method
