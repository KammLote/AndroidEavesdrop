.class public final Lcom/google/android/gms/internal/vr;
.super Ljava/lang/Object;


# instance fields
.field public final zzcho:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/vg;",
            ">;"
        }
    .end annotation
.end field

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
.method public constructor <init>(Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/vg;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/vf;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/vr;->zzcho:Ljava/util/List;

    iput-object p2, p0, Lcom/google/android/gms/internal/vr;->zzchp:Ljava/util/List;

    return-void
.end method
