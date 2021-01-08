.class public final Lcom/google/android/gms/internal/vv;
.super Ljava/lang/Object;


# instance fields
.field public final zzchl:Lcom/google/android/gms/internal/vs;

.field public final zzchp:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/vf;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/vs;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/vs;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/vf;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/vv;->zzchl:Lcom/google/android/gms/internal/vs;

    iput-object p2, p0, Lcom/google/android/gms/internal/vv;->zzchp:Ljava/util/List;

    return-void
.end method
