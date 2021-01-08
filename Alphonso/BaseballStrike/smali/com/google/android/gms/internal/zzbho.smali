.class abstract Lcom/google/android/gms/internal/zzbho;
.super Lcom/google/android/gms/internal/zzbhn;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzbhn",
        "<",
        "Lcom/google/android/gms/internal/zzbhg;",
        ">;"
    }
.end annotation


# instance fields
.field protected zzaKv:Lcom/google/android/gms/internal/zzbib;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzbhn;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    new-instance v0, Lcom/google/android/gms/internal/zzbhp;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzbhp;-><init>(Lcom/google/android/gms/internal/zzbho;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbho;->zzaKv:Lcom/google/android/gms/internal/zzbib;

    return-void
.end method
