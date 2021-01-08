.class final synthetic Lcom/google/android/gms/internal/zzaew;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private final zzXH:Lcom/google/android/gms/internal/zzaev;

.field private final zzXI:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzaev;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzaew;->zzXH:Lcom/google/android/gms/internal/zzaev;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzaew;->zzXI:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaew;->zzXH:Lcom/google/android/gms/internal/zzaev;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzaew;->zzXI:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzaev;->zzy(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
