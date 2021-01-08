.class final Lcom/google/android/gms/internal/zzcwn;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzcwm$zzc;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzb(Landroid/content/Context;Lcom/google/android/gms/tagmanager/zzcn;Lcom/google/android/gms/tagmanager/zzce;)Lcom/google/android/gms/internal/zzcwm;
    .locals 9

    new-instance v0, Lcom/google/android/gms/internal/zzcwm;

    new-instance v4, Lcom/google/android/gms/internal/zzcxh;

    invoke-direct {v4, p1}, Lcom/google/android/gms/internal/zzcxh;-><init>(Landroid/content/Context;)V

    invoke-static {p1}, Lcom/google/android/gms/internal/zzcxd$zza;->zzbx(Landroid/content/Context;)Ljava/util/concurrent/ExecutorService;

    move-result-object v5

    invoke-static {}, Lcom/google/android/gms/internal/zzcxf;->zzCC()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v6

    invoke-static {}, Lcom/google/android/gms/internal/zzcvr;->zzCv()Lcom/google/android/gms/internal/zzcvr;

    move-result-object v7

    new-instance v8, Lcom/google/android/gms/internal/zzcwm$zza;

    invoke-direct {v8, p1}, Lcom/google/android/gms/internal/zzcwm$zza;-><init>(Landroid/content/Context;)V

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/internal/zzcwm;-><init>(Landroid/content/Context;Lcom/google/android/gms/tagmanager/zzcn;Lcom/google/android/gms/tagmanager/zzce;Lcom/google/android/gms/internal/zzcxh;Ljava/util/concurrent/ExecutorService;Ljava/util/concurrent/ScheduledExecutorService;Lcom/google/android/gms/internal/zzcvr;Lcom/google/android/gms/internal/zzcwm$zza;)V

    return-object v0
.end method
