.class final Lcom/google/android/gms/internal/zzyp;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic zzRF:Lcom/google/android/gms/internal/zzym;

.field private synthetic zzRH:Lcom/google/android/gms/internal/zzajf;

.field private synthetic zzRI:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzym;Lcom/google/android/gms/internal/zzajf;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzyp;->zzRF:Lcom/google/android/gms/internal/zzym;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzyp;->zzRH:Lcom/google/android/gms/internal/zzajf;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzyp;->zzRI:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v1, p0, Lcom/google/android/gms/internal/zzyp;->zzRH:Lcom/google/android/gms/internal/zzajf;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzyp;->zzRF:Lcom/google/android/gms/internal/zzym;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzym;->zzb(Lcom/google/android/gms/internal/zzym;)Lcom/google/android/gms/ads/internal/zzbb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/zzbb;->zzbl()Landroid/support/v4/util/SimpleArrayMap;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/internal/zzyp;->zzRI:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/support/v4/util/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzpw;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/zzajf;->zzg(Ljava/lang/Object;)V

    return-void
.end method
