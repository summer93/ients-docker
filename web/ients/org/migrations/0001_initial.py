# Generated by Django 2.0.3 on 2018-03-12 10:45

from django.conf import settings
import django.contrib.auth.models
import django.contrib.auth.validators
from django.db import migrations, models
import django.db.models.deletion
import django.utils.timezone
import uuid


class Migration(migrations.Migration):

    initial = True

    dependencies = [
        ('general', '0001_initial'),
        ('auth', '0009_alter_user_last_name_max_length'),
    ]

    operations = [
        migrations.CreateModel(
            name='User',
            fields=[
                ('id', models.UUIDField(auto_created=True, default=uuid.uuid4, editable=False, primary_key=True, serialize=False)),
                ('password', models.CharField(max_length=128, verbose_name='password')),
                ('last_login', models.DateTimeField(blank=True, null=True, verbose_name='last login')),
                ('is_superuser', models.BooleanField(default=False, help_text='Designates that this user has all permissions without explicitly assigning them.', verbose_name='superuser status')),
                ('username', models.CharField(error_messages={'unique': 'A user with that username already exists.'}, help_text='Required. 150 characters or fewer. Letters, digits and @/./+/-/_ only.', max_length=150, unique=True, validators=[django.contrib.auth.validators.UnicodeUsernameValidator()], verbose_name='username')),
                ('first_name', models.CharField(blank=True, max_length=30, verbose_name='first name')),
                ('last_name', models.CharField(blank=True, max_length=150, verbose_name='last name')),
                ('email', models.EmailField(blank=True, max_length=254, verbose_name='email address')),
                ('is_staff', models.BooleanField(default=False, help_text='Designates whether the user can log into this admin site.', verbose_name='staff status')),
                ('is_active', models.BooleanField(default=True, help_text='Designates whether this user should be treated as active. Unselect this instead of deleting accounts.', verbose_name='active')),
                ('date_joined', models.DateTimeField(default=django.utils.timezone.now, verbose_name='date joined')),
                ('Ui_Color', models.CharField(default='contrast-fb', max_length=20, verbose_name='界面颜色')),
                ('Ui_Zoom', models.FloatField(default=0.8, verbose_name='界面缩放系数')),
                ('Design_Rate', models.FloatField(default=0.8, verbose_name='设计系数')),
                ('Phone_Number', models.CharField(max_length=20, verbose_name='手机号码')),
                ('Job_Number', models.CharField(default='000000000', max_length=20, verbose_name='工号')),
                ('Avatar', models.ImageField(default='/images/avatar/default.png', upload_to='', verbose_name='头像')),
                ('groups', models.ManyToManyField(blank=True, help_text='The groups this user belongs to. A user will get all permissions granted to each of their groups.', related_name='user_set', related_query_name='user', to='auth.Group', verbose_name='groups')),
                ('user_permissions', models.ManyToManyField(blank=True, help_text='Specific permissions for this user.', related_name='user_set', related_query_name='user', to='auth.Permission', verbose_name='user permissions')),
            ],
            options={
                'verbose_name': 'user',
                'verbose_name_plural': 'users',
                'abstract': False,
                'swappable': 'AUTH_USER_MODEL',
            },
            managers=[
                ('objects', django.contrib.auth.models.UserManager()),
            ],
        ),
        migrations.CreateModel(
            name='Account_Type',
            fields=[
                ('id', models.UUIDField(auto_created=True, default=uuid.uuid4, editable=False, primary_key=True, serialize=False)),
                ('NO', models.CharField(default='0', max_length=20, unique=True, verbose_name='账户类型代码')),
                ('Name', models.CharField(max_length=20, verbose_name='账户类型名称')),
            ],
        ),
        migrations.CreateModel(
            name='AuthorityCompany',
            fields=[
                ('id', models.UUIDField(auto_created=True, default=uuid.uuid4, editable=False, primary_key=True, serialize=False)),
                ('NO', models.CharField(default='0', max_length=20, verbose_name='权限代码')),
            ],
            options={
                'ordering': ['Company'],
            },
        ),
        migrations.CreateModel(
            name='AuthorityDepartment',
            fields=[
                ('id', models.UUIDField(auto_created=True, default=uuid.uuid4, editable=False, primary_key=True, serialize=False)),
                ('NO', models.CharField(default='0', max_length=20, verbose_name='权限代码')),
            ],
            options={
                'ordering': ['Department'],
            },
        ),
        migrations.CreateModel(
            name='AuthorityRole',
            fields=[
                ('id', models.UUIDField(auto_created=True, default=uuid.uuid4, editable=False, primary_key=True, serialize=False)),
                ('NO', models.CharField(default='0', max_length=20, verbose_name='权限代码')),
                ('ModuleMenu', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='general.ModuleMenu', verbose_name='模块目录')),
            ],
            options={
                'ordering': ['Role'],
            },
        ),
        migrations.CreateModel(
            name='AuthorityUser',
            fields=[
                ('id', models.UUIDField(auto_created=True, default=uuid.uuid4, editable=False, primary_key=True, serialize=False)),
                ('NO', models.CharField(default='0', max_length=20, verbose_name='权限代码')),
                ('ModuleMenu', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='general.ModuleMenu', verbose_name='模块目录')),
                ('User', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to=settings.AUTH_USER_MODEL, verbose_name='角色')),
            ],
        ),
        migrations.CreateModel(
            name='Company',
            fields=[
                ('id', models.UUIDField(auto_created=True, default=uuid.uuid4, editable=False, primary_key=True, serialize=False)),
                ('Name', models.CharField(max_length=100, verbose_name='名称')),
            ],
            options={
                'verbose_name': '公司',
                'verbose_name_plural': '公司汇总',
            },
        ),
        migrations.CreateModel(
            name='Department',
            fields=[
                ('id', models.UUIDField(auto_created=True, default=uuid.uuid4, editable=False, primary_key=True, serialize=False)),
                ('Name', models.CharField(max_length=20, verbose_name='名称')),
                ('is_First', models.BooleanField(default=False, verbose_name='起点')),
                ('Company', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='org.Company', verbose_name='公司')),
            ],
            options={
                'verbose_name': '部门',
                'verbose_name_plural': '部门汇总',
                'ordering': ['Company'],
            },
        ),
        migrations.CreateModel(
            name='Department_Con',
            fields=[
                ('id', models.UUIDField(auto_created=True, default=uuid.uuid4, editable=False, primary_key=True, serialize=False)),
                ('Head', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, related_name='SJBM', to='org.Department', verbose_name='上级部门')),
                ('Leef', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, related_name='XJBM', to='org.Department', verbose_name='下级部门')),
            ],
            options={
                'verbose_name': '组织架构',
                'verbose_name_plural': '组织架构汇总',
                'ordering': ['Head'],
            },
        ),
        migrations.CreateModel(
            name='Role',
            fields=[
                ('id', models.UUIDField(auto_created=True, default=uuid.uuid4, editable=False, primary_key=True, serialize=False)),
                ('Name', models.CharField(max_length=20, verbose_name='岗位名称')),
                ('Account_Type', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='org.Account_Type', verbose_name='类型')),
                ('Company', models.ForeignKey(blank=True, default=None, on_delete=django.db.models.deletion.CASCADE, to='org.Company', verbose_name='公司')),
            ],
            options={
                'ordering': ['Company'],
            },
        ),
        migrations.CreateModel(
            name='Role_Con_Department',
            fields=[
                ('id', models.UUIDField(auto_created=True, default=uuid.uuid4, editable=False, primary_key=True, serialize=False)),
                ('Department', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='org.Department', verbose_name='部门')),
                ('Role', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='org.Role', verbose_name='岗位')),
            ],
            options={
                'ordering': ['Role__Company'],
            },
        ),
        migrations.CreateModel(
            name='User_Con_Company',
            fields=[
                ('id', models.UUIDField(auto_created=True, default=uuid.uuid4, editable=False, primary_key=True, serialize=False)),
                ('Company', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='org.Company', verbose_name='公司')),
                ('User', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to=settings.AUTH_USER_MODEL, verbose_name='用户')),
            ],
            options={
                'ordering': ['Company'],
            },
        ),
        migrations.CreateModel(
            name='User_Con_Department',
            fields=[
                ('id', models.UUIDField(auto_created=True, default=uuid.uuid4, editable=False, primary_key=True, serialize=False)),
                ('Department', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='org.Department', verbose_name='部门')),
                ('User', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to=settings.AUTH_USER_MODEL, verbose_name='用户')),
            ],
            options={
                'ordering': ['Department__Company'],
            },
        ),
        migrations.CreateModel(
            name='User_Con_Role',
            fields=[
                ('id', models.UUIDField(auto_created=True, default=uuid.uuid4, editable=False, primary_key=True, serialize=False)),
                ('Role', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='org.Role', verbose_name='岗位')),
                ('User', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to=settings.AUTH_USER_MODEL, verbose_name='用户')),
            ],
            options={
                'ordering': ['Role__Company'],
            },
        ),
        migrations.AddField(
            model_name='authorityrole',
            name='Role',
            field=models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='org.Role', verbose_name='岗位'),
        ),
        migrations.AddField(
            model_name='authoritydepartment',
            name='Department',
            field=models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='org.Department', verbose_name='公司'),
        ),
        migrations.AddField(
            model_name='authoritydepartment',
            name='ModuleMenu',
            field=models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='general.ModuleMenu', verbose_name='模块目录'),
        ),
        migrations.AddField(
            model_name='authoritycompany',
            name='Company',
            field=models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='org.Company', verbose_name='公司'),
        ),
        migrations.AddField(
            model_name='authoritycompany',
            name='ModuleMenu',
            field=models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='general.ModuleMenu', verbose_name='模块目录'),
        ),
    ]
