.class final Lcom/google/android/gms/internal/wn;
.super Lcom/google/android/gms/internal/nr;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/nr",
        "<",
        "Lcom/google/android/gms/internal/wj;",
        "Lcom/google/android/gms/internal/xf;",
        ">;"
    }
.end annotation


# instance fields
.field private zzchS:Z

.field private synthetic zzchT:Lcom/google/android/gms/internal/wo;

.field private synthetic zzchU:Lcom/google/android/gms/internal/wl;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/wl;Lcom/google/android/gms/internal/wo;)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/gms/internal/wn;->zzchU:Lcom/google/android/gms/internal/wl;

    iput-object p2, p0, Lcom/google/android/gms/internal/wn;->zzchT:Lcom/google/android/gms/internal/wo;

    invoke-direct {p0}, Lcom/google/android/gms/internal/nr;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/wn;->zzchS:Z

    return-void
.end method


# virtual methods
.method public final synthetic zzh(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3

    check-cast p1, Lcom/google/android/gms/internal/wj;

    check-cast p2, Lcom/google/android/gms/internal/xf;

    iget-boolean v0, p0, Lcom/google/android/gms/internal/wn;->zzchS:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/wj;->zzIJ()Lcom/google/android/gms/internal/wj;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/wj;->zzi(Lcom/google/android/gms/internal/wj;)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/wn;->zzchS:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/wn;->zzchT:Lcom/google/android/gms/internal/wo;

    invoke-static {}, Lcom/google/android/gms/internal/wj;->zzIJ()Lcom/google/android/gms/internal/wj;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/wn;->zzchU:Lcom/google/android/gms/internal/wl;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/wl;->zzIP()Lcom/google/android/gms/internal/xf;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/wo;->zzb(Lcom/google/android/gms/internal/wj;Lcom/google/android/gms/internal/xf;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/wn;->zzchT:Lcom/google/android/gms/internal/wo;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/wo;->zzb(Lcom/google/android/gms/internal/wj;Lcom/google/android/gms/internal/xf;)V

    return-void
.end method
