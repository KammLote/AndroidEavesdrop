.class public final Lcom/google/android/gms/internal/zzayg;
.super Ljava/lang/Object;


# static fields
.field public static final zzayo:Lcom/google/android/gms/internal/zzbzt;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzbzt",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x0

    const-string v0, "gms:cast:remote_display_enabled"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v2, v0, v1}, Lcom/google/android/gms/internal/zzbzt;->zzb(ILjava/lang/String;Ljava/lang/Boolean;)Lcom/google/android/gms/internal/zzbzv;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/zzayg;->zzayo:Lcom/google/android/gms/internal/zzbzt;

    return-void
.end method

.method public static final initialize(Landroid/content/Context;)V
    .locals 1

    invoke-static {}, Lcom/google/android/gms/internal/zzcae;->zzub()Lcom/google/android/gms/internal/zzbzz;

    invoke-static {}, Lcom/google/android/gms/internal/zzcae;->zzuc()Lcom/google/android/gms/internal/zzcaa;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/zzcaa;->initialize(Landroid/content/Context;)V

    return-void
.end method
