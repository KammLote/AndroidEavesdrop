.class public final Lcom/google/android/gms/internal/hc;
.super Ljava/lang/Object;


# instance fields
.field public final zzbTD:Lcom/google/android/gms/internal/hd;

.field public final zzbTE:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/wearable/Asset;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/hd;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/hd;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/wearable/Asset;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/hc;->zzbTD:Lcom/google/android/gms/internal/hd;

    iput-object p2, p0, Lcom/google/android/gms/internal/hc;->zzbTE:Ljava/util/List;

    return-void
.end method
