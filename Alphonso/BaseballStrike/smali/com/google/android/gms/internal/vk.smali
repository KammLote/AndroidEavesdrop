.class final Lcom/google/android/gms/internal/vk;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/google/android/gms/internal/vf;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic zzcgW:Lcom/google/android/gms/internal/vj;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/vj;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/vk;->zzcgW:Lcom/google/android/gms/internal/vj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 4

    check-cast p1, Lcom/google/android/gms/internal/vf;

    check-cast p2, Lcom/google/android/gms/internal/vf;

    new-instance v0, Lcom/google/android/gms/internal/xe;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/vf;->zzHX()Lcom/google/android/gms/internal/wj;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/vf;->zzHV()Lcom/google/android/gms/internal/wz;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/wz;->zzFm()Lcom/google/android/gms/internal/xf;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/xe;-><init>(Lcom/google/android/gms/internal/wj;Lcom/google/android/gms/internal/xf;)V

    new-instance v1, Lcom/google/android/gms/internal/xe;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/vf;->zzHX()Lcom/google/android/gms/internal/wj;

    move-result-object v2

    invoke-virtual {p2}, Lcom/google/android/gms/internal/vf;->zzHV()Lcom/google/android/gms/internal/wz;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/wz;->zzFm()Lcom/google/android/gms/internal/xf;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/internal/xe;-><init>(Lcom/google/android/gms/internal/wj;Lcom/google/android/gms/internal/xf;)V

    iget-object v2, p0, Lcom/google/android/gms/internal/vk;->zzcgW:Lcom/google/android/gms/internal/vj;

    invoke-static {v2}, Lcom/google/android/gms/internal/vj;->zza(Lcom/google/android/gms/internal/vj;)Lcom/google/android/gms/internal/wy;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/google/android/gms/internal/wy;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
