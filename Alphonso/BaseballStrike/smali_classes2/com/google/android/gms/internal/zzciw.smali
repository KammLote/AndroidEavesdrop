.class final Lcom/google/android/gms/internal/zzciw;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic zzbrM:Lcom/google/android/gms/internal/zzcgk;

.field final synthetic zzbrP:Lcom/google/android/gms/internal/zzcfk;

.field final synthetic zzbun:Ljava/lang/Integer;

.field final synthetic zzbuo:Landroid/app/job/JobParameters;

.field final synthetic zzbup:Lcom/google/android/gms/internal/zzciv;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzciv;Lcom/google/android/gms/internal/zzcgk;Ljava/lang/Integer;Lcom/google/android/gms/internal/zzcfk;Landroid/app/job/JobParameters;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzciw;->zzbup:Lcom/google/android/gms/internal/zzciv;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzciw;->zzbrM:Lcom/google/android/gms/internal/zzcgk;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzciw;->zzbun:Ljava/lang/Integer;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzciw;->zzbrP:Lcom/google/android/gms/internal/zzcfk;

    iput-object p5, p0, Lcom/google/android/gms/internal/zzciw;->zzbuo:Landroid/app/job/JobParameters;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzciw;->zzbrM:Lcom/google/android/gms/internal/zzcgk;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcgk;->zzze()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzciw;->zzbrM:Lcom/google/android/gms/internal/zzcgk;

    new-instance v1, Lcom/google/android/gms/internal/zzcix;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/zzcix;-><init>(Lcom/google/android/gms/internal/zzciw;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzcgk;->zzl(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzciw;->zzbrM:Lcom/google/android/gms/internal/zzcgk;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcgk;->zzza()V

    return-void
.end method
