.class final Lcom/google/android/gms/internal/zzcir;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic val$name:Landroid/content/ComponentName;

.field private synthetic zzbuk:Lcom/google/android/gms/internal/zzcip;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzcip;Landroid/content/ComponentName;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzcir;->zzbuk:Lcom/google/android/gms/internal/zzcip;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzcir;->val$name:Landroid/content/ComponentName;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcir;->zzbuk:Lcom/google/android/gms/internal/zzcip;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzcip;->zzbua:Lcom/google/android/gms/internal/zzcic;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcir;->val$name:Landroid/content/ComponentName;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzcic;->zza(Lcom/google/android/gms/internal/zzcic;Landroid/content/ComponentName;)V

    return-void
.end method
